// Playground - noun: a place where people can play


// if

let name = "john"

if name == "john" {
    println("john")
}
else if name == "helmut" {
    println("helmut")
}
else {
    println("anything else")
}

if name is Int {
    println("Int")
}
else if name is String {
    println("String")
}
else {
    println("nor Int or String")
}


// if mit Zuweisung

func maybeString(nb: Int) -> String? {
    return nb % 2 == 0 ? "gerade" : nil
}

let str = maybeString(10)
if let sureStr = str {
    println("I know sureStr is a string & not nil")
}


// for

for name in ["john", "helmut"] {
    println("my name is \(name)")
}

for (name, age) in ["john": 21, "helmut": 18] {
    println("my name is \(name) and I am \(age) yo")
}

for i in 0..<10 {
    println("I am some counter. My value is \(i)")
}

// switch

let n = 42
switch(n) {
case 0..<50:
    println("I am in the interval [0,49]")
case 50:
    println("I am 50")
default:
    println("anything else")
}


// while & do while

var i = 0
while i < 10 {
    println(i)
    i++
}

var j = 0
do {
    println(j)
    j++
} while j < 10


// func

func inc(a: Int) -> Int {
    return a+1
}

func factorial(n: Int) -> Int {
    if n == 0 {
        return 1
    }
    else {
        return n * factorial(n - 1)
    }
}

let result = factorial(10)


// closures

let incrementFunction = {number in number + 1}

incrementFunction(42)

func applyFunction(list: [Int], f: Int -> Int) -> [Int] {
    var list: [Int] = []
    for nb in list {
        list.append(f(nb))
    }
    return list
}

let list = [10, 42, 111]
applyFunction(list, incrementFunction)


// map, filter, reduce

(1...10).map(incrementFunction)
(1...10).map {n in n + 1}

// Summe aller Zahlen zw. 1 und 100, die Vielfach von 4 sind

(1...100)
    .filter{n in n % 4 == 0}
    .reduce(0) {a, b in a+b}



// enum

enum CourseType {
    case Mandatory,
    case Optional,
    case NotSureWillHaveToCheck
}

func sayIt(t: CourseType) {
    switch(t) {
    case .Mandatory:
        println("Sorry the course is mandatory")
    case .Optional:
        println("I will play PS3 instead")
    case .NotSureWillHaveToCheck:
        println("I check that")
    }
}

sayIt(CourseType.Mandatory)
CourseType.Mandatory.rawValue


