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

1.	Code: Der Ordner Code enthält alle Dateien, die für das Erstellen der Buckets nötig sind
2.	AWS Bilder: Der Ordner AWS Bilder enthält alle Bilder, welche in dem gesamten Projekt verwendet wurden. (Für Dokumentation, Testbild)
3.	Dokumentation: Der Ordner Dokumentation enthält alle erstellten Dokumentationen inkl. Reflexionen und Tests. Die [Hauptdokumenation](https://github.com/markokokoko/ProjektM346/blob/main/Dokumentation/Hauptdokumentation.md) ist hier abgelegt
4.	Testbild: Im Ordner Testbild ist das Testbild abgelegt, welches am Ende jedes Erstellen hochgeladen und wieder heruntergeladen wird.



