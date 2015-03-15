// Playground - noun: a place where people can play

import UIKit


// 2a. Erweitere Array und schreibe eine Lese-Property 'length', die die Laenge vom Array zurueckgibt

// ...


let array = [1,2,3,4]
//array.length


// 2b. Gegeben sei das Protokoll 'Person'. Implementiere 2 Klassen 'ComputerScientist' und 'Banker',
//     die die folgende Kriterien erfüllen:
//     - Sie sind eine Unterklassen von NSObject (NSObject ist analog zu Object in Java)
//     - Sie muessen das Protokoll Person implementieren (d.h. auch die Properties und Methoden, die in Person
//       deklariert sind).
//     - Sie muessen das Protokoll Printable implementieren
//
//     Anschliessend folgendes noch machen:
//     - Erzeuge ein Array von Personen (mit je 2 Informatiker und 2 Banker).
//     - Leite ein Array ab, mit den 4 Strings, die von den 4 Personen gesagt werden
//     - Und nun mit den 4 String, was die 4 Personen essen

protocol Person {
    var name: String { get }
    func say() -> String
    func eat() -> String
}


//var persons: [Person] = []
//persons.append(Banker(name: "brady"))
//persons.append(Banker(name: "tidjane"))
//persons.append(ComputerScientist(name: "steve"))
//persons.append(ComputerScientist(name: "niklaus"))

//let names = ...
//let sayings = ...
//let eatings = ...

//persons
//names
//sayings
//eatings
