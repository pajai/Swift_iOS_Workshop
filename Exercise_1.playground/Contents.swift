// Playground - noun: a place where people can play

import UIKit

/*:

# Übung 1
## a. Der Trinkgeld-Rechner

Funktion `tipComputer` vervollstaendigen, damit sie fuer einen gegebenen Betrag `amount` und eine bestimmte Zufriedenheit `satisfaction` den passenden Trinkgeld-Betrag (siehe enum SatisfactionLevel) zurueckgibt.

*/

enum SatisfactionLevel {
    case ServiceWasRude    // 10% tip
    case EverythingWasFine // 18% tip
    case SuperHappy        // 20% tip
}

func tipComputer(amount: Double, satisfaction: SatisfactionLevel) -> Double {
    // TODO
    return Double.NaN
}

tipComputer(65.50, satisfaction: SatisfactionLevel.ServiceWasRude)
tipComputer(77.20, satisfaction: SatisfactionLevel.SuperHappy)


/*:

## b. Summe der Primzahlen zw. 1 und 100

Gegeben ist die folgende Funktion `isPrime`

*/

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
        let divisors = range.filter{n in number % n == 0}
        return divisors.count == 0
    }
}

isPrime(11)
isPrime(100)
isPrime(101)

//let result = ...
//result


//: (Optional)
//: ## c. Finde die 101. Primzahl. Dabei die vorgegebene Funktion `isPrime` verwenden.

// TODO


/*: 

(Optional)
## d. Berechne die Reihe der ersten 20 Fibonacci-Zahlen.

Fibonacci-Zahlen sind folgendermassen definiert:
- 1 und 2 sind die zwei ersten Fibonacci-Zahlen
- Die n-te Fibonacci-Zahl wird als Summe beider vorherigen (n-1)-ten und (n-2)-ten Fibonacci-Zahlen berechnet:

F_n = F_n-1 + F_n-2

Es ergibt die folgende Reihe: 1, 2, 3, 5, 8, 13, 21, 34, ...

*/

func fibonnaciFirst20() -> [Int] {
    // TODO
    return []
}

fibonnaciFirst20()
