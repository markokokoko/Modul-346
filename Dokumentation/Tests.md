# Tests
In diesem Abschnitt werden alle Schritte getestet und dokumentiert. 

## Verbindung zu AWS überprüfen ("aws s3 ls")
Werden deine bereits erstellen Buckets etc. angezeigt ist die Verbindung erfolgreich.
![AWSverbindung]( https://github.com/markokokoko/Projekt-Modul-346/blob/main/Bilder/AWSverbindung.png)


## Ausführung Skript
In diesem Test wird überprüft, ob das Skript vollständig funktioniert:

1.	Download vom Repository als Zip-Datei

![Zip_herunterladen_1](https://github.com/markokokoko/ProjektM346/blob/main/Bilder/Zip_Herunterladen_1.png)

![Zip_Herunterladen_2](https://github.com/markokokoko/ProjektM346/blob/main/Bilder/Zip_herunterladen_2.png)

Im Ordner Download ist nun das heruntergelade Repository 
![ZipDatei]( https://github.com/markokokoko/ProjektM346/blob/main/Bilder/ZipDatei.png)

2.	Als nächster Schritt muss man nun in WSL in das entsprechende Verzeichnis wechseln:
![VerzeichnisWechseln](https://github.com/markokokoko/ProjektM346/blob/main/Bilder/verzeichnisWechseln.png)

3.	Nun wird das Skript ausgeführt (bash create1.sh):

![Skriptausfuehren](https://github.com/markokokoko/ProjektM346/blob/main/Bilder/Skriptausgefuehrt.png)

Das Skript wurde wie im Bild gezeigt erfolgreich ausgeführt. Um nun zu überprüfen, ob das Bild nun wirklich verkleinert wurde, kann man im Ordner «Testbild» überprüfen ob das verkleinerte Bild erstellt wurde:

![Uberpruefen](https://github.com/markokokoko/ProjektM346/blob/main/Bilder/Ueberpruefen.png)

Wie man im Ordner sehen kann, wurde das verkleinerte Bild erstellt. Man kann es auch daran erkennen, da das verkleinerte Bild deutlich weniger Speicherkapazität in Anspruch nimmt. 


Die Folgende Abbildungen zeigen die beiden Varianten der Bilder auf. (Original und Verkleinert)
Original:
![OriginalBild](https://github.com/markokokoko/ProjektM346/blob/main/Bilder/OriginalBild.png)

Verkleinert:
![Verkleinert](https://github.com/markokokoko/ProjektM346/blob/main/Bilder/VerkleinertBild.png)

### Schlussfolgerung:
Das Ausführen des Skriptes hat einwandfrei funktioniert. Das Original Bild wurde ohne Fehlermeldungen oder Probleme ausgeführt

# Mögliche Fehler

## Keine Netzwerkverbindung vorhanden
Wenn auf dem Gerät keine Internetverbindung hergestellt wird, kann folgende Fehlermeldung auftreten:
![KeineVerbindung]( ProjektM346/Bilder/KeineInternetverbindung.png at main · markokokoko/ProjektM346 (github.com))

Bitte Internetverbindung überprüfen, falls diese Fehlermeldung erscheint.

## Keine Verbindung zu AWS hergestellt
Es kann sein, dass beim Versuch sich mit AWS zu verbinden folgende Fehlermeldung auftaucht:
![AWSFehler]( ProjektM346/Bilder/AWSFehler.png at main · markokokoko/ProjektM346 (github.com))

Falls diese Fehlermeldung auftaucht, deutet es darauf hin, dass ein Fehler im credentials File und/oder der Session Token nicht mehr aktuell ist. Dadurch schlägt die Verbindung zu AWS 

## Skript bleibt stehen

Im Falle, dass das Skript stehen bleibt und nicht mehr weiterläuft, kann es an folgenden Punkten liegen:

-	### Klick in die Konsole
Es kann sein, dass man ausversehen in die Konsole geklickt hat und nun das Skript gestoppt wurde. Durch das klicken des Enter Buttons sollte das Skript wieder weiterlaufen.

-	### Zu viele Buckets
Wenn das Skript zu lange nach Namen sucht, kann es sein, dass bereits zu viele Buckets mit dem Namen erstellt wurden. Dagegen würde es helfen, wenn man die Namen der Buckets im Skript ändern würde. 

-	### Keine Fehlerbehebung konnte helfen
Falls keine der oberen genannten Punkte helfen kann, wäre es Sinnvoll WSL neu zu starten oder direkt einen Neustart des Gerätes durchzuführen. (Hat in unserem Falle funktioniert)

