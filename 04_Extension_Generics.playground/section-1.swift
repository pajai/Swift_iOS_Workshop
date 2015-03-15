// Playground - noun: a place where people can play


// *** Extension

extension Int {
    func times(f: () -> ()) {
        for i in 0..<self {
            f()
        }
    }
}


5.times{ println("hallo") }


// extension properties

extension Double {
    var km: Double { return 1000 * self }
    var m:  Double { return self }
    var cm: Double { return self / 100 }
    var mm: Double { return self / 1000 }
    var inch: Double { return self * 2.54.cm }
}

5.km
let marathon = 42.km + 195.m
27.inch


// Missing method on String? No problem, add it

extension String {
    var length: Int { return countElements(self) }
}

"hallo".length


// *** Generics


// Basically similar to Java


// Generics Parameter für Methoden

func print<T: Printable>(t: T) {
    print(t.description)
}

print(5.0)


// Und für Klassen

class Stack<T> {
    private var values: [T] = []
    
    func push(t: T) {
        values.append(t)
    }
    
    func pop() -> T? {
        let n = countElements(values)
        if n > 0 {
            let t: T = values[n-1]
            values.removeAtIndex(n-1)
            return t
        }
        return nil;
    }
    
    func isEmpty() -> Bool {
        return countElements(values) == 0
    }
}


let s = Stack<Int>()
s.push(5)
s.push(10)
while (!s.isEmpty()) {
    println(s.pop())
}

