//: Playground - noun: a place where people can play

let h: String? = "H"
let ell = "ell"
let o: String? = "o"
var world: String! = nil
world = " world!"
let helloWorld: String
if let h2 = h, let o2 = o, let world2 = world{
    helloWorld = h2+ell+o2+world2
} else {
    helloWorld = ""
}
print(helloWorld)
