// Playground - noun: a place where people can play

import UIKit


// 1a. Der Trinkgeld-Rechner

// Funktion tipComputer vervollstaendigen, damit sie fuer einen gegebenen Betrag 'amount' und
// eine bestimmte Zufriedenheit 'satisfaction' den passenden Trinkgeld-Betrag (siehe enum SatisfactionLevel)
// zurueckgibt.


enum SatisfactionLevel {
    case ServiceWasRude    // 10% tip
    case EverythingWasFine // 18% tip
    case SuperHappy        // 20% tip
}

func tipComputer(amount: Double, satisfaction: SatisfactionLevel) -> Double {
    // ...
}

tipComputer(65.50, SatisfactionLevel.ServiceWasRude)
tipComputer(77.20, SatisfactionLevel.SuperHappy)


// 1b. Summe der Primzahlen zw. 1 und 100

// Gegeben ist die Funktion isPrime

func isPrime(number: Int) -> Bool {
    if number == 1 {
        return false
    }
    else if number == 2 || number == 3 {
        return true
    }
    else {
        let upper: Int = Int(floor(sqrt(Double(number))))
        let range: Range<Int> = 2...upper
        let divisors = filter(range){n in number % n == 0}
        return countElements(divisors) == 0
    }
}

isPrime(11)
isPrime(100)
isPrime(101)

//let result = ...
//result


// (Optional)
// 1c. Finde die 101. Primzahl. Dabei die vorgegebene Funktion isPrime verwenden.

// ...
