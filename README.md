# Projektarbeit-Modul-346

## Übersicht 
Dieses Repository wurde von Roman Ramsauer, Marko Kojic und Anel Babic als Gruppe erstellt.
In diesem Repository handelt es sich um das Projekt im Modul 364 «Cloudlösung konzipieren und realisieren».


## Ziele 
Die Ziele dieser Projektarbeit sind folgende:

1. Ein Service soll in der Cloud funktionstüchtig aufgesetzt werden. Dieser Service und die Anforderungen dazu werden im nächsten Unterkapitel Aufgabenstellung vorgestellt. 
2. Der Service soll als Infrastructure as Code (IaC) gestaltet sein und einfach in einer Cloud in Betrieb genommen werden können. Die Konfigurationsdateien werden in einer Versionsverwaltung verwaltet. 
3. Die Dokumentation findet direkt über Git in Markdown statt (im gleichen Repository wie die Konfigurationsdateien). 
4. Einzelne Testfälle sollen durchgespielt, mittels Screenshot protokolliert und in der Dokumentation abgelegt werden. 

## Aufgabenstellung 
Die Aufgabenstellung von dieser Projektarbeit lautet wie folgt:

«Richten Sie zwei Buckets auf Amazon S3 ein.
Sobald ein Bild in das erste Bucket hochgeladen wird, soll automatisch, z.B. über eine Lambdafunktion eine verkleinerte Version des Bildes im zweiten Bucket abgelegt werden.»

## Inhalt
Dieses Repository enthält folgende Hauptordner:

1.	[Codes](https://github.com/markokokoko/ProjektM346/tree/main/Codes): Der Ordner Codes enthält alle Dateien, die für das Erstellen der Buckets nötig sind.
| Code | Funktion |
| ---- | ---- |
| [create1.sh](https://github.com/markokokoko/ProjektM346/blob/main/Codes/create1.sh ) | Führt die Buckets, Funktionen und das Hoch- und herunterladen des Bildes)|

 [index.py](https://github.com/markokokoko/ProjektM346/blob/main/Codes/index.py ) | Führt die komprimierung auf AWS durch |
| [pillow.zip](https://github.com/markokokoko/ProjektM346/blob/main/Codes/pillow.zip ) | Ist die Library um die Bilder zu komprimieren. |
  
    
3. 	[Bilder](https://github.com/markokokoko/ProjektM346/tree/main/Bilder): Der Ordner Bilder enthält alle Bilder, welche in dem gesamten Projekt verwendet wurden. (Für Dokumentation, Testbild etc.)
4.	[Dokumentation](https://github.com/markokokoko/ProjektM346/blob/main/Dokumentation/Hauptdokumentation.md): Der Ordner Dokumentation enthält alle erstellten Dokumentationen inkl. Reflexionen, Aufgabenverteilung, Tests, sowie auch die Hauptdokumentation.
5.	[Testbild](https://github.com/markokokoko/ProjektM346/tree/main/Testbild): Im Ordner Testbild ist das Testbild abgelegt, welches am Ende jedes Erstellen hochgeladen und wieder heruntergeladen wird.



