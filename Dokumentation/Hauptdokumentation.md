Übersicht 

Das ist das erstellte Repository von Ramsauer Roman, Kojic Marko und Babic Anel. In diesem Repository handelt es sich um das Projekt im Modul 364 «Cloudlösung konzipieren und realisieren». 

 

Ziele 

Die Ziele dieser Projektarbeit sind folgende: 

 

1.Ein Service soll in der Cloud funktionstüchtig aufgesetzt werden. Dieser Service und die Anforderungen dazu werden im nächsten Unterkapitel Aufgabenstellung vorgestellt.  

2. Der Service soll als Infrastructure as Code (IaC) gestaltet sein und einfach in einer Cloud in Betrieb genommen werden können. Die Konfigurationsdateien werden in einer Versionsverwaltung verwaltet.  

3. Die Dokumentation findet direkt über Git in Markdown statt (im gleichen Repository wie die Konfigurationsdateien).  

4. Einzelne Testfälle sollen durchgespielt, mittels Screenshot protokolliert und in der Dokumentation abgelegt werden.  

 

Aufgabenstellung 

Die Aufgabenstellung von dieser Projektarbeit lautet wie folgt: 

 

«Richten Sie zwei Buckets auf Amazon S3 ein. Sobald ein Bild in das erste Bucket hochgeladen wird, soll automatisch, z.B. über eine Lambdafunktion eine verkleinerte Version des Bildes im zweiten Bucket abgelegt werden.» 

 

Inhalt 

 

Dieses Repository enthält folgende Hauptordner: 

 

Code: Der Ordner Code enthält alle Dateien, die für das Erstellen der Buckets nötig sind) 

AWS Bilder: Der Ordner AWS Bilder enthält alle Bilder, welche in dem gesamten Projekt verwendet wurden. (Für Dokumentation, Testbild) 

Dokumentation: Der Ordner Dokumentation enthält alle erstellen Dokumentationen inkl. Reflexionen und Tests. 

Testbild: Im Ordner Testbild ist das Testbild abgelegt, welches am Ende jedes Erstellen hochgeladen und wieder heruntergeladen wird.  

 

## Anleitung für das Ausführen des Skriptes 

 

 

Um das Skript auszuführen welches dazu da ist, ein beliebiges Bild zu verkleinern müssen folgende Schritte beachtet werden: 

 Der erste Schritt, welcher notwendig ist um das Skript auszuführen, ist AWS auf der gewünschten Konsole zu installieren.  

Für die Installation kann folgende Anleitung unterstützten:  

 Als zweiter Schritt, muss man eine Verbindung zwischen der Konsole und AWS herstellen. Um die Verbindung herzustellen, gibt 

es eine Anleitung unter folgendem Link:  

Als dritter Schritt muss das Repository als Zip heruntergeladen werden: 

![Zip_Herunterladen_1]( https://github.com/markokokoko/Projekt-Modul-346/blob/main/Bilder/Zip_Herunterladen_1.png) 

![Zip_Herunterladen_2]( https://github.com/markokokoko/Projekt-Modul-346/blob/main/Bilder/Zip_herunterladen_2.png) 

 

Als vierter Schritt, muss man nun das File «create.sh» ausführen, wodurch dann die Buckets etc. erstellt werden und das Testbild verkleinert wird.  

 

Es ist zu beachten, dass man nach dem herunterladen der Datei, die Datei extrahieren muss. Danach wechselt man mithilfe von «cd» in das entsprechende Verzeichnis, indem sich das Skript befindet: 

Cd /mnt/c/users/benutzername/downloads/Projekt346/Projekt346/Code 

 

 

## Benutzerdefiniertes Bild 

 

Um ein Benutzerdefiniertes Bild zu verwenden, muss beim heruntergeladenen Repository im Ordner «Testbild», dass Testbild entfernt werden und durch das gewünschte Bild ersetzt werden. Dadurch wird beim ausführen des Skriptes das Benutzerdefinierte Bild verkleinert. 

![Testbild]( https://github.com/markokokoko/Projekt-Modul-346/blob/main/Bilder/Testbild.png) 

 

Mithilfe dieser Anleitung solltest du nun die Möglichkeit haben mit dem Skript ein beliebiges Bild zu verkleinern.  

 

## Tests 

In diesem Abschnitt werden alle Schritte getestet und dokumentiert.  

 

# Verbindung zu AWS überprüfen 

"aws s3 ls" werden deine bereits erstellen Buckets etc. angezeigt ist die Verbindung erfolgreich. 

[AWSverbindung]( https://github.com/markokokoko/Projekt-Modul-346/blob/main/Bilder/AWSverbindung.png) 

 

 

 

# Ausführung Skript 

In diesem Test wird überprüft, ob das Skript vollständig funktioniert: 

 

Download vom Repository als Zip-Datei 

![Zip_herunterladen_1](https://github.com/markokokoko/ProjektM346/blob/main/Bilder/Zip_Herunterladen_1.png) 

 

![Zip_Herunterladen_2](https://github.com/markokokoko/ProjektM346/blob/main/Bilder/Zip_herunterladen_2.png) 

 

Im Ordner Download ist nun das heruntergelade Repository  

![ZipDatei]( https://github.com/markokokoko/ProjektM346/blob/main/Bilder/ZipDatei.png) 

 

Als nächster Schritt muss man nun in WSL in das entsprechende Verzeichnis wechseln: 

![VerzeichnisWechseln](https://github.com/markokokoko/ProjektM346/blob/main/Bilder/verzeichnisWechseln.png) 

 

 

Nun wird das Skript ausgeführt (bash create1.sh): 

 

![Skriptausfuehren](https://github.com/markokokoko/ProjektM346/blob/main/Bilder/Skriptausgefuehrt.png) 

 

Das Skript wurde wie im Bild gezeigt erfolgreich ausgeführt. Um nun zu überprüfen, ob das Bild nun wirklich verkleinert wurde, kann man im Ordner «Testbild» überprüfen ob das verkleinerte Bild erstellt wurde: 

 

![Uberpruefen](https://github.com/markokokoko/ProjektM346/blob/main/Bilder/Ueberpruefen.png) 

 

Wie man im Ordner sehen kann, wurde das verkleinerte Bild erstellt. Man kann es auch daran erkennen, da das verkleinerte Bild deutlich weniger Speicherkapazität in Anspruch nimmt.  

 

 

Die Folgende Abbildungen zeigen die beiden Varianten der Bilder auf. (Original und Verkleinert) 

Original: 

![OriginalBild](https://github.com/markokokoko/ProjektM346/blob/main/Bilder/OriginalBild.png) 

 

Verkleinert: 

![Verkleinert](https://github.com/markokokoko/ProjektM346/blob/main/Bilder/VerkleinertBild.png) 

 

# Schlussfolgerung: 

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

 

### Klick in die Konsole 

Es kann sein, dass man ausversehen in die Konsole geklickt hat und nun das Skript gestoppt wurde. Durch das klicken des Enter Buttons sollte das Skript wieder weiterlaufen. 

 

### Zu viele Buckets 

Wenn das Skript zu lange nach Namen sucht, kann es sein, dass bereits zu viele Buckets mit dem Namen erstellt wurden. Dagegen würde es helfen, wenn man die Namen der Buckets im Skript ändern würde.  

 

### Keine Fehlerbehebung konnte helfen 

Falls keine der oberen genannten Punkte helfen kann, wäre es Sinnvoll WSL neu zu starten oder direkt einen Neustart des Gerätes durchzuführen. (Hat in unserem Falle funktioniert) 
