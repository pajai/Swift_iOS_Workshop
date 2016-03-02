/*:

# Übung Wetter-App

Das Ziel von dieser Übung ist es, eine kleine Wetter-App zu programmieren.

Gegeben ist ein App-Gerüst mit folgenden Komponenten/Klassen:

- Ein Storyboard-File `Main.storyboard`, welches die graphische Oberfläche unserer einfachen App definiert (relativ einfach, da nur 1 Screen).

- Ein Gerüst vom Hauptcontroller `ViewController`. Dieser Controller wird im Rahmen dieser Übung vervollständigt, damit unsere kleine Wetter-App korrekt funktionieren kann.

- Eine Klasse `WeatherRequest`, die die Abfrage zum Server von openweathermap.org übernimmt und ein Modellobjekt mit dem Resultat der Abfrage zurückliefert.

- Das erwähnte Modellobjekt `WeatherData`

Schaut ihr euch diese Komponenten an, um euch mit dem Projekt vertraut zu machen.



A) In Teil A wollen wir die UI-Elemente und Klassen vom Storyboard-File mit dem Code verbinden:

- Definieren Sie im Interface-Builder die Verbindung zw. Controller-Klasse und unserer Klasse `ViewController`, damit eine Instanz von `ViewController` erzeugt wird, wenn die Storyboard-Datei geladen wird.

- Verbinden Sie im Interface-Builder alle Labels, welche wir nach Erhalt der Wetterinformationen vom Server ändern werden, mit deren Outlets in der Controller-Klasse `ViewController`.

B) Die Standortabfrage mit CoreLocation ist schon implementiert. Nun müssen Sie in der passende Lifecycle-Methode von `ViewController` den Prozess anstossen (Methode `checkPermission` aufrufen).
  
Tipp: wir wollen `checkPermission` aufrufen, wenn der Controller erscheint.


C) Nach Erhalt vom Standort wird performServerRequest aufgerufen. Lokal sollte self.location gesetzt sein. Nun wollen wir diese Methode vervollständigen.

- In dieser Methode wollen wir eine Instanz von WeatherRequest erzeugen und in einer Instanzvariablen von `ViewController` speichern (dies ist wichtig, damit diese Instanz nach Beendigung der Methode vom Speicher nicht geräumt wird).

- Zunächst wollen wir das Success-Block erzeugen und zuweisen. Dieser Code wird bei Erfolg der Server-Abfrage mit einer Instanz vom Modell `WeatherData` aufgerufen.
  
Tipp: Sie können dieses Success-Block folgendermassen zuweisen:

    weatherRequest?.successBlock = { weatherData in
      // etwas mit weatherData machen
    }

Nun wollen wir die Daten aus weatherData lesen und die verschiedene Labels damit updaten
  
Tipp: die Property `text` von UILabel enthält den Text vom Label, kann gelesen und geschrieben werden.

- Am Ende von `performServerRequest` können wir die Methode `performRequest` von `WeatherRequest` aufrufen, damit die Server-Abfrage abgesetzt wird.


D) Nun wollen wir ein Reload-Machanismus implementieren (Optional)

- Im Storyboard-File ist dafür ein Knopf `Neu laden` definiert. Vom Interface-Builder verbinden Sie nun dessen Aktion `Touch up inside` mit der Methode `reloadPressed` von `ViewController`.

- Jetzt können Sie die Methode `reloadPressed` vervollständigen. Sie sollten zuerst `self.location` zurücksetzen (damit die CoreLocation Abfrage nochmals ausgeführt werden kann) und anschliessend `startLocationRequest` aufrufen.

*/
