 ## Inhalt 

- Anleitung zur Ausführung des Skriptes 
- Skript benutzerdefiniert anpassen 
- Tests  
- Mögliche Fehler  
- Reflexionen
- Fazit
- Aufgabenverteilung  

 

## Anleitung zur Ausführung des Skriptes 

Um zu erfahren, wie das Skript nun ausgeführt wird, ist in der [Anleitung](https://github.com/markokokoko/ProjektM346/blob/main/Dokumentation/Anleitung_Ausfuehren_Skript.md) Schritt für Schritt erklärt, wie man vorgehen soll. 

 

## Skript Benutzerdefiniert anpassen 

Die Namen der Buckets  und der Lambdafunktion können im Skript (create.sh) angepasst werden.  

 

### Bucket1original:
Dies ist der Bucket, in welchem das Bild in originaler Bildgrösse hochgeladen wird. 

### Bucket2original:
Dies ist der Bucket, in welchem das verkleinerte Bild hochgeladen wird.  

### functionNameoriginal:
Der Variable-Name der Lambdafunktion kann ebenfalls angepasst werden. 


![VariableNow](https://github.com/markokokoko/ProjektM346/blob/main/Bilder/VariableNow.png) 

Es kann zum Beispiel zu folgenden Namen geändert werden, ohne dass es Einfluss auf das Ausführen des Skriptes hat (Ausser die Ausgabe des Skriptes). 

![VariableAfter](https://github.com/markokokoko/ProjektM346/blob/main/Bilder/VaribaleAfter.png)

 

### Grösse der verkleinerten Bilder bestimmen 

In dem File [Index](https://github.com/markokokoko/ProjektM346/blob/main/Codes/Index.py) gibt es eine Variable «size». Mithilfe dieser Variable kann man eine bestimmte Grösse festlegen.  
![IndexAnpassen](https://github.com/markokokoko/ProjektM346/blob/main/Bilder/Index.png) 

#### Anmerkung 

Es ist zu beachten, dass das Seitenverhältnis des Bildes bestehen bleibt und nicht verändert wird.


## Tests 

Die durchgeführten Tests sind in folgendem File beschrieben und erklärt: [Tests]( https://github.com/markokokoko/ProjektM346/blob/main/Dokumentation/Tests.md) 

 

## Mögliche Fehler 

 

### Keine Netzwerkverbindung vorhanden 

 

Wenn auf dem Gerät keine Internetverbindung hergestellt wird, kann folgende Fehlermeldung auftreten: 

![KeineVerbindung](https://github.com/markokokoko/ProjektM346/blob/main/Bilder/KeineInternetverbindung.png) 

 

Bitte Internetverbindung überprüfen, falls diese Fehlermeldung erscheint. 

 

### Keine Verbindung zu AWS hergestellt 

Es kann sein, dass beim Versuch sich mit AWS zu verbinden folgende Fehlermeldung auftaucht: 

![AWSFehler](https://github.com/markokokoko/ProjektM346/blob/main/Bilder/AWSFehler.png) 

 

Falls diese Fehlermeldung auftaucht, deutet es darauf hin, dass das credentials File und/oder der Session Token nicht mehr aktuell ist. 

 

### Skript bleibt stehen 

 

Im Falle, dass das Skript stehen bleibt und nicht mehr weiterläuft, kann es an folgenden Punkten liegen: 

 

-	#### Klick in die Konsole 

Es kann sein, dass man aus Versehen in die Konsole geklickt hat und nun das Skript gestoppt wurde. Durch das Klicken des Enter-Buttons sollte das Skript wieder weiterlaufen. 

 

-	#### Zu viele Buckets 

Wenn das Skript zu lange nach Namen sucht, kann es sein, dass bereits zu viele Buckets mit dem Namen erstellt wurden. Dagegen würde es helfen, wenn man die Namen der Buckets im Skript ändern würde.  

 

-	#### Keine Fehlerbehebung konnte helfen 

Falls keine der oberen genannten Punkte helfen können, wäre es sinnvoll, WSL neu zu starten oder direkt einen Neustart des Gerätes durchzuführen. (Hat in unserem Falle funktioniert) 

## Reflexionen 

Die Persönlichen Reflexionen und das Fazit sind unter [Reflexionen](https://github.com/markokokoko/ProjektM346/blob/main/Dokumentation/reflexionen.md) verfügbar. 

## Aufgabenverteilung

Die Aufgabenverteilung ist unter [Aufgabenverteilung](https://github.com/markokokoko/ProjektM346/blob/main/Dokumentation/Aufgabenverteilung.md) verfügbar. 


