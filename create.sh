#!/bin/bash
echo " "
# Prüfen ob Internetverbinung besteht
if ! nc -zw1 google.com 443 &> /dev/null; then
  echo "Es konnte keine Verbindung zum Internet hergestellt werden"
  echo "Bitte eine Internetverbindung herstellen und dann nochmals versuchen"
  echo ""
  exit -1
fi

# Prüfen ob Verbindung zu AWS besteht
# https://unix.stackexchange.com/a/190610
identity=$(aws sts get-caller-identity 2>&1> /dev/null)
if [ -n "$identity" ] # Fehler aufgetreten
then
    echo "Beim Versuch eine Verbindung zu AWS herzustellen ist ein Fehler aufgetreten ..."
    echo "Bitte die credentials Datei im .aws Ordner überprüfen/aktualisieren"
    echo ""
    exit -1
fi

# nötiges installieren 
echo "Packages werden vorbereitet ..."
sudo apt-get -qq update > /dev/null
sudo apt-get install -qq zip > /dev/null
sudo apt-get install -qq jq > /dev/null
echo "Packages wurden fertig vorbereitet"

# Variablen deklarieren
bucket1original="sr-lg-m346-projekt-original"
bucket2original="sr-lg-m346-projekt-resized"
functionNameoriginal="copyImage"

layerName="pillow"
compressesPrefix="resized_"
region=`aws configure get region`
testBildDir="../Testbild"

# Diese Variablen sollten nur geändert werden wenn man das Python umbennent oder von Python auf z.B. node ändernt
runtime="python3.9"
py="index.py"
pil="pillow.zip"
pyFuncName="CopyImage"
pyTempName="CopyImage"
pyTemp="$pyTempName.py"
zipName="lambda.zip"


# Einzigartige Namen für die Buckets finden
echo ""
echo "Einzigartige Namen für Buckets und Lambda-Funktion werden gesucht ..."
functionName=$functionNameoriginal
i=-1
while [ 1 ]
do
    i=$((i+1))
    if [ "$i" -eq "0" ] 
    then
        bucket1="$bucket1original"
        bucket2="$bucket2original"
        functionName="$functionNameoriginal"
    else
        bucket1="$bucket1original-$i"
        bucket2="$bucket2original-$i"
        functionName="$functionNameoriginal-$i"
    fi

    funcRes=$(aws lambda get-function --function-name $functionName 2>&1> /dev/null)
    if [ -z "$funcRes" ] #kein fehler -> Funktion existiert bereits
    then
        continue
    fi

    bucket1Res=$(aws s3api head-bucket --bucket $bucket1 2>&1> /dev/null)
    bucket2Res=$(aws s3api head-bucket --bucket $bucket2 2>&1> /dev/null)
    if [ -n "$bucket1Res" ] && [ -n "$bucket2Res" ]
    then
        errorCode1=${bucket1Res#*(}
        errorCode1=${errorCode1%)*}

        errorCode2=${bucket2Res#*(}
        errorCode2=${errorCode2%)*}

        if [ "$errorCode1" -eq "404" ] && [ "$errorCode2" -eq "404" ] #nur wenn Bucket nicht gefunden (404) / es könnte auch 403 sein (Bucket gehört jemand anderem)
        then
            break
        fi
    fi
done
echo "Gefunden"
echo ""

# Buckets erstellen
aws s3 mb s3://$bucket1 2>&1 >/dev/null
echo "Bucket \"$bucket1\" wurde erstellt"

aws s3 mb s3://$bucket2 2>&1 >/dev/null
echo "Bucket \"$bucket2\" wurde erstellt"

# warten bis Buckets wirklich erstellt worden sind
aws s3 wait bucket-exists --bucket $bucket1 &> /dev/null
aws s3 wait bucket-exists --bucket $bucket2 &> /dev/null

# Layer erstellen
layer=$(aws lambda publish-layer-version \
    --layer-name $layerName \
    --zip-file fileb://$pil \
    --compatible-runtimes $runtime \
    --region "$region" \
    | jq -r '.LayerVersionArn')

echo ""
echo "Layer \"$layerName\" wurde erstellt"

# Funktion erstellen
cp $py $pyTemp > /dev/null
sed -i -e 's/sourcebucket_replace/'$bucket1'/g' $pyTemp
sed -i -e 's/destbucket_replace/'$bucket2'/g' $pyTemp
sed -i -e 's/resizedPrefix_replace/'$compressesPrefix'/g' $pyTemp
sed -i -e 's/lambda_handler_replace/'$pyFuncName'/g' $pyTemp
zip -r9 $zipName $pyTemp > /dev/null
rm $pyTemp

accountNumber=`aws sts get-caller-identity | jq -r '.Account'`

aws lambda create-function \
    --function-name "$functionName" \
    --runtime python3.9 \
    --zip-file "fileb://$zipName" \
    --handler "$pyTempName.$pyFuncName" \
    --role "arn:aws:iam::"$accountNumber":role/LabRole" \
    --region $region \
    --layers "$layer" \
    > /dev/null

rm $zipName

# Der Funktion das Recht geben  aud den Bucket zuzugreifen
aws lambda add-permission \
    --function-name $functionName \
    --action lambda:InvokeFunction \
    --statement-id s3 \
    --principal s3.amazonaws.com \
    --source-arn "arn:aws:s3:::$bucket1" \
    > /dev/null
echo "Lambda Funktion \"$functionName\" wurde erstellt"

# Dem Bucket einen Trigger(alle Create Events) hinzufügen und auf die Funktion verweisen 
eventJson='{
    "LambdaFunctionConfigurations": 
    [
        {
            "Id": "'$functionName'",
            "LambdaFunctionArn": "arn:aws:lambda:'$region':'$accountNumber':function:'$functionName'",
            "Events": ["s3:ObjectCreated:*"],
            "Filter": 
            {
                "Key": 
                {
                    "FilterRules": 
                    [
                        {
                            "Name": "prefix",
                            "Value": ""
                        },
                        {
                            "Name": "suffix",
                            "Value": ""
                        }
                    ]
                }
            }
        }
    ]
}'

# Manchmal hat es zuerst nicht funktioniert unf dann plötzlich doch
notificationErstellt=0
for i in {1..10} # Da es nicht lange dauert mal 10 Versuche
do
    if `aws s3api put-bucket-notification-configuration --bucket "$bucket1" --notification-configuration "$eventJson" &> /dev/null`
    then
        notificationErstellt=1
        break
    fi
done
if [ "$notificationErstellt" -eq "1" ]
then
    echo "Notification erstellt"
else
    echo "Beim erstellen der Notification ist ein Fehler aufegtreten"
fi

# Ausgabe und Beispiel
echo ""
echo "Alles fertig eingerichtet"
echo "Bucket orginal: "$bucket1
echo "Bucket verkleinert: "$bucket2
echo ""

sleep 3

testBildPfad=("$testBildDir"/*)
if [ -z "$testBildPfad" ]
then
    echo "Im \"Testbild-Ordner ist keine Datei\""
    echo "Bitte ein Bild einfügen"
else
    if file "$testBildPfad" |grep -qE 'image|bitmap'
    then # Datei ist ein Bild
        testBildDir="$(dirname "${testBildPfad}")"
        testBildName="$(basename "${testBildPfad}")"
        echo "Beispiel:"
        set -x
        aws s3 cp "$testBildPfad" "s3://$bucket1"
        { set +x; } 2>/dev/null

        sleep 5 # Der Copy-Funktion Zeit geben da sie ein paar Sekunden braucht

        set -x
        if `aws s3 cp "s3://$bucket2/$compressesPrefix$testBildName" "$testBildDir/$compressesPrefix$testBildName" >/dev/null`
        then
            { set +x; } 2>/dev/null

            # Bild wieder von Buckets entfernen
            aws s3 rm "s3://$bucket1/$testBildName" > /dev/null
            aws s3 rm "s3://$bucket2/$compressesPrefix$testBildName" > /dev/null

            echo ""
            echo "Das verkleinerte Bild ist gespeichert unter: $testBildDir/$compressesPrefix$testBildName"
            echo ""
            echo "Erfolg :)"
        else
            { set +x; } 2>/dev/null

            echo "$functionName"
            echo "Es ist ein Fehler aufgetreten :("

            # Wieder aufräumen
            aws lambda delete-function --function-name "$functionName" > /dev/null
            aws s3 rb s3://$bucket1 --force >/dev/null
            aws s3 rb s3://$bucket2 --force >/dev/null
        fi
    else
        echo "Die Datei im Ordner $testBildDir ist kein Bild"
        echo "Bitte ein Bild einfügen"
    fi
fi