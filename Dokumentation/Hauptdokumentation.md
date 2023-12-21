 ## Inhalt 

- Anleitung zur Ausführung des Skriptes 
- Skript benutzerdefiniert anpassen 
- Tests  
- Mögliche Fehler  
- Reflexionen  
- Nützliche Infos  

 

## Anleitung zur Ausführung des Skriptes 

Um zu erfahren, wie das Skript nun ausgeführt wird, ist unter: [Anleitung](https://github.com/markokokoko/ProjektM346/blob/main/Dokumentation/Anleitung_Ausfuehren_Skript.md) Schritt für Schritt erklärt, wie man vorgehen soll. 

 

## Skript Benutzerdefiniert anpassen 

Die Namen der Buckets  und der Lambda Funktion können im Skript (create.sh) angepasst werden.  

 

### Bucket1original:
Dies ist der Bucket, in welchem das Bild in originaler Bildgrösse hochgeladen wird. 

### Bucket2original:
Dies ist der Bucket, in welchem das verkleinerte Bild hochgeladen wird.  

### functionNameoriginal:
Der Variable Name der Lambda Funktion, kann ebenfalls angepasst werden. 


![VariableNow](https://github.com/markokokoko/ProjektM346/blob/main/Bilder/VariableNow.png) 

Es kann zum Beispiel zu folgenden Namen geändert werden, ohne dass es Einfluss auf das Ausführen des Skriptes hat (Ausser die Ausgabe des Skriptes). 

![VariableAfter](https://github.com/markokokoko/ProjektM346/blob/main/Bilder/VaribaleAfter.png)

 

### Grösse der verkleinerten Bilder bestimmen 

In dem File [Index]

https://github.com/markokokoko/ProjektM346/blob/main/Codes/Index.py) gibt es eine Variable «size». Mithilfe dieser Variable, kann man eine bestimmte Grösse festlegen.  
[IndexAnpassen]
(https://github.com/markokokoko/ProjektM346/blob/main/Bilder/Index.png) 

#### Anmerkung 

Es ist zu beachten, dass das Seitenverhältnis des Bildes bestehen bleibt und nicht verändert wird.

## Tests 


 
