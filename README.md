# Projekt Modul 346

## Übersicht 
Das ist das erstellte Repository von Ramsauer Roman, Kojic Marko und Babic Anel.
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

1.	Code: Der Ordner Code enthält alle Dateien, die für das Erstellen der Buckets nötig sind)
2.	AWS Bilder: Der Ordner AWS Bilder enthält alle Bilder, welche in dem gesamten Projekt verwendet wurden. (Für Dokumentation, Testbild)
3.	Dokumentation: Der Ordner Dokumentation enthält alle erstellen Dokumentationen inkl. Reflexionen und Tests.
4.	Testbild: Im Ordner Testbild ist das Testbild abgelegt, welches am Ende jedes Erstellen hochgeladen und wieder heruntergeladen wird. 


## Erste Schritte
1. Als erstes muss man AWS auf seiner Konsole installieren. Dazu eine Anleitung [hier](https://docs.aws.amazon.com/de_de/cli/latest/userguide/getting-started-install.html)
2. Dann muss man sich in der Konsole mit AWS verbinden. Dazu eine Anleitung [hier](./Dokumentation/connectToAWS.md).<br>
2. Dannach muss das Repository entweder mit git geklont oder als Zip herunterladen und entzippt werden.<br>
3. Zum Schluss nur noch [create.sh](./Code/create.sh) in der Konsole aufrufen.<br>
Denn Rest erledigt das Skript.
