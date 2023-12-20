## Anleitung für das Ausführen des Skriptes


Um das Skript auszuführen welches dazu da ist, ein beliebiges Bild zu verkleinern müssen folgende Schritte beachtet werden:
1.	 Der erste Schritt, welcher notwendig ist um das Skript auszuführen, ist AWS auf der gewünschten Konsole zu installieren. 
Für die Installation kann folgende Anleitung unterstützten: [Anleitung](https://gbssg.gitlab.io/m346/lab-awscli/)
2.	 Als zweiter Schritt, muss man eine Verbindung zwischen der Konsole und AWS herstellen. Um die Verbindung herzustellen, gibt
es eine Anleitung unter folgendem Link: [Anleitung](https://gbssg.gitlab.io/m346/lab-awscli/)
3.	Als dritter Schritt muss das Repository als Zip heruntergeladen werden:
4.	
![Zip_Herunterladen_1]( https://github.com/markokokoko/Projekt-Modul-346/blob/main/Bilder/Zip_Herunterladen_1.png)
![Zip_Herunterladen_2]( https://github.com/markokokoko/Projekt-Modul-346/blob/main/Bilder/Zip_herunterladen_2.png)

5.	Als vierter Schritt, muss man nun das File «create.sh» ausführen, wodurch dann die Buckets etc. erstellt werden und das Testbild verkleinert wird. 

Es ist zu beachten, dass man nach dem herunterladen der Datei, die Datei extrahieren muss. Danach wechselt man mithilfe von «cd» in das entsprechende Verzeichnis, indem sich das Skript befindet:
Cd /mnt/c/users/benutzername/downloads/Projekt346/Projekt346/Code


## Benutzerdefiniertes Bild

Um ein Benutzerdefiniertes Bild zu verwenden, muss beim heruntergeladenen Repository im Ordner «Testbild», dass Testbild entfernt werden und durch das gewünschte Bild ersetzt werden. Dadurch wird beim ausführen des Skriptes das Benutzerdefinierte Bild verkleinert.

![Testbild]( https://github.com/markokokoko/Projekt-Modul-346/blob/main/Bilder/Testbild.png)

Mithilfe dieser Anleitung solltest du nun die Möglichkeit haben mit dem Skript ein beliebiges Bild zu verkleinern. 
