//: Playground - noun: a place where people can play

let c: (Int) -> Void

c={(a:Int) -> Void in
    print(a)
}
c(10)


let c1: (Int,Int) -> Bool

c1 = {(x, y) -> Bool in
    return x < y
}

let result = c1(10, 20)


let func1:((Int) -> Int) -> () = {
    tmp in
    _ = tmp(10)
}

let func2: (Float) -> ((Int) -> Double) = { a in
    return { (b) -> Double in
        return Double(a) + Double(b)
    }
}

let myClosure : (Int) -> Double = func2(10)
let value = myClosure(20)


extension Array {
    func myFilter(_ isIncluded: (Element) -> Bool) -> [Element] {
        var elements: [Element] = []
        for element in self where isIncluded(element) {
            elements += [element]
        }
        return elements
    }
}

let before: [Any] = ["hoge", "fuga", "piyo", 1, 2, 3, "foo", "bar"]
let after = before.myFilter { element in
    return element is String
}
print(after)
