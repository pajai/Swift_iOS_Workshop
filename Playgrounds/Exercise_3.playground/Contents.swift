/*:

## Übung 3
# Wetter-App

Das Ziel von dieser Übung ist es, eine kleine Wetter-App zu programmieren.

Gegeben ist ein App-Gerüst mit folgenden Komponenten/Klassen:

- Ein Storyboard-File `Main.storyboard`, welches die graphische Oberfläche unserer App definiert (relativ einfach, da nur 1 Screen).

- Ein Gerüst vom Hauptcontroller `ViewController`. Dieser Controller wird im Rahmen dieser Übung vervollständigt.

- Eine Klasse `WeatherRequest`, die die Abfrage zum Server von [OpenWeatherMap.org](http://openweathermap.org) übernimmt und ein Modellobjekt mit dem Resultat (Wetterinformationen) zurückliefert.

- Die erwähnte Modellklasse `WeatherData`

- Eine Datei `Podfile`, welche die Projektabhängigkeiten angibt. Hier haben wir einzig eine Abhängigkeit zu `SwiftyJSON` deklariert.

Schaut ihr euch diese Komponenten an, um euch mit dem Projekt vertraut zu machen.


----


A. In Teil A wollen wir das Projekt aufsetzen und die `CocoaPods` Abhängigkeiten herunterladen und einbinden.

- Zuerst wollen wir das CocoaPods-Tool installieren. Dafür folgende Zeile in einem Terminal ausführen:

    $ sudo gem install cocoapods
    

- Nun können wir das Projekt aufsetzen. Im Hauptverzeichnis des Projektes können wir den folgenden Befehl ausführen:

    $ pod install


- Wichtig: Wenn man ein Projekt mit CocoaPods einrichtet, muss man jeweils das Workspace-File (hier `Swift_iOS_Workshop.xcworkspace`) und nicht das Projekt-File (mit der Endung `.xcodeproj`) aufmachen. Nun öffnen wir das erwähnte Workspace-File.


----


B) In Teil B wollen wir die UI-Elemente und Klassen vom Storyboard mit den entsprechenden Elementen im Code verbinden:

- Im Interface-Builder stellen wir zuerst die Verbindung zw. der Controller-Klasse und unserer Klasse `ViewController` her. So wird sichergestellt, dass eine Instanz von `ViewController` erzeugt wird, wenn der Screen (so wie im Storyboard definiert) geladen wird.

- Verbinden wir nun im Interface-Builder alle Labels, die wir als Outlets in der Controller-Klasse `ViewController` deklariert haben.


----


C) Die Standortabfrage mit CoreLocation ist schon implementiert. Wir müssen nur in der passende Lifecycle-Methode von `ViewController` den Prozess anstossen (Methode `checkPermission` aufrufen).
  
Tipp: wir wollen `checkPermission` aufrufen, wenn der Controller erscheint. Um Welche Controller-Lifecycle-Methode(n) handelt es sich hier?


----


D) Nach Erhalt des Standortes wird die Methode `performServerRequest` aufgerufen (lokal sollte den Standort in self.location gespeichert werden). Nun wollen wir diese Methode `performServerRequest` vervollständigen.

- In dieser Methode wollen wir eine Instanz von WeatherRequest erzeugen und in eine Property in `ViewController` speichern (dies ist wichtig, damit diese Instanz nach Beendigung der Methode vom Speicher nicht geräumt wird).

- Zunächst wollen wir das Success-Block erzeugen und zuweisen. Dieser Code wird bei Erfolg der Server-Abfrage mit einer Instanz von `WeatherData` aufgerufen.
  
Tipp: Wir können dieses Success-Block folgendermassen erzeugen und zuweisen:

    weatherRequest?.successBlock = { weatherData in
      // etwas mit weatherData machen
    }

Nun wollen wir die Daten aus `weatherData` lesen und die verschiedene Labels damit updaten (u.a. Standort, Wetterlage, Temperatur).
  
Tipp: die Property `text` von UILabel enthält den Text vom Label (kann gelesen und geschrieben werden).

- Am Ende von `performServerRequest` können wir die Methode `performRequest` von `WeatherRequest` aufrufen, damit die Server-Abfrage durchgeführt wird.


----


E) Nun wollen wir ein Reload-Machanismus implementieren (Optional)

- Im Storyboard-File ist dafür ein Knopf `Neu laden` definiert. Vom Interface-Builder verbinden wir nun dessen Aktion `Touch up inside` mit der Methode `reloadPressed` von `ViewController`.

- Jetzt können wir die Methode `reloadPressed` vervollständigen. Wir sollten zuerst `self.location` zurücksetzen (damit die CoreLocation Abfrage nochmals ausgeführt wird) und anschliessend `startLocationRequest` aufrufen.

*/
