## Inhalt 

- Anleitung zur Ausführung des Skriptes 
- Skript benutzerdefiniert anpassen 
- Tests  
- Mögliche Fehler  
- Reflexionen  
- Nützliche Infos  

 

 

## Anleitung zur Ausführung des Skriptes 

Um zu erfahren, wie das Skript nun ausgeführt wird, ist unter: Anleitung Schritt für Schritt erklärt, wie man vorgehen soll. 

 

## Skript Benutzerdefiniert anpassen 

Die Namen der Buckets  und der Lambda Funktion können im Skript (create.sh) angepasst werden.  

 

### Bucket1original:
Dies ist der Bucket, in welchem das Bild in originaler Bildgrösse hochgeladen wird. 

### Bucket2original:
Dies ist der Bucket, in welchem das verkleinerte Bild hochgeladen wird.  

### functionNameoriginal:
Der Variable Name der Lambda Funktion, kann ebenfalls angepasst werden. 


![VariableNow]( ProjektM346/Bilder/VariableNow.png at main · markokokoko/ProjektM346 (github.com)) 

Kann zum Beispiel zu folgenden Namen geändert werden, ohne dass es Einfluss auf das Ausführen des Skriptes hat (Ausser die Ausgabe des Skriptes). 

![VariableAfter]( ProjektM346/Bilder/VariableAfter.png at main · markokokoko/ProjektM346 (github.com)) 

 

### Grösse der verkleinerten Bilder bestimmen 

In dem Skript  

 
