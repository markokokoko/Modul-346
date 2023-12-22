# Tests
In diesem Abschnitt werden alle Schritte getestet und dokumentiert. 
Die Test wurden von Roman Rmasauer erstellt 

## Verbindung zu AWS überprüfen ("aws s3 ls") / 21.12.2023 
Werden deine bereits erstellten Buckets etc. angezeigt, ist die Verbindung erfolgreich.
![AWSverbindung]( https://github.com/markokokoko/Projekt-Modul-346/blob/main/Bilder/AWSverbindung.png)

#### Fazit
Die Verbindung zu AWS konnte problemlos hergestellt werden. Falls dies nicht der Fall sein würde, sind in der Dokumentation mögliche Fehler dokumentiert und wie man diese beheben kann.

## Ausführung Skript / 21.12.2023 
In diesem Test wird überprüft, ob das Skript vollständig funktioniert:

1.	Download vom Repository als Zip-Datei

![Zip_herunterladen_1](https://github.com/markokokoko/ProjektM346/blob/main/Bilder/Zip_Herunterladen_1.png)

![Zip_Herunterladen_2](https://github.com/markokokoko/ProjektM346/blob/main/Bilder/Zip_herunterladen_2.png)

Im Ordner Download ist nun das heruntergeladene Repository 
![ZipDatei]( https://github.com/markokokoko/ProjektM346/blob/main/Bilder/ZipDatei.png)

2.	Als nächster Schritt muss man nun in WSL in das entsprechende Verzeichnis wechseln:
![VerzeichnisWechseln](https://github.com/markokokoko/ProjektM346/blob/main/Bilder/verzeichnisWechseln.png)

3.	Nun wird das Skript ausgeführt (bash create1.sh):

![Skriptausfuehren](https://github.com/markokokoko/ProjektM346/blob/main/Bilder/Skriptausgefuehrt.png)

Das Skript wurde wie im Bild gezeigt erfolgreich ausgeführt. Um nun zu überprüfen, ob das Bild nun wirklich verkleinert wurde, kann man im Ordner «Testbild» nachschauen und kontrollieren, ob das verkleinerte Bild erstellt wurde:

![Uberpruefen](https://github.com/markokokoko/ProjektM346/blob/main/Bilder/Ueberpruefen.png)

Wie man im Ordner sehen kann, wurde das verkleinerte Bild erstellt. Man kann es auch daran erkennen, da das verkleinerte Bild deutlich weniger Speicherkapazität in Anspruch nimmt. 


Die folgenden Abbildungen zeigen die beiden Varianten der Bilder auf. (Original und verkleinert)
Original:
![OriginalBild](https://github.com/markokokoko/ProjektM346/blob/main/Bilder/OriginalBild.png)

Verkleinert:
![Verkleinert](https://github.com/markokokoko/ProjektM346/blob/main/Bilder/VerkleinertBild.png)

#### Fazit:
Der Komplete Vorgang hat ohne Fehler einwandfrei Funktioniert. Das Bild im ersten Bucket konnte mithilfe des ausführen des Codes verkleinert werden.
Falls es in der Ausführung des Skriptes Probleme gibt, sind in der Dokumentation mögliche Ursachen dokumentiert und beschrieben. Ebenfalls wird erklärt, wie diese Probleme behoben werden können. 


### Schlussfolgerung 
Anhand der oberen Test kann man feststellen, dass die Ausführung des Skriptes inkl. allen Faktoren ohne Probleme funktioniert!

