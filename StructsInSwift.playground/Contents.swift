import UIKit

/*
var item = "Learn Swift"
var dueDate = Date.now
var completed = false

// How should we keep track of multiple toDos?
var items: [String] = []
var dueDates: [Date] = []
var completeds: [Bool] = []

// Add data:
items.append(item)
dueDates.append(dueDate)
completeds.append(completed)

items.append("Second To Do Item - Build Apps")
dueDates.append(Date.now + (60*60*24)) // second due date 24 hrs from now
completeds.append(false) // second completed is not complete

// Update data:
// Which one to update?
// Better not get this wrong or all 3 arrays are out of sync!
completeds[1] = true

// Remove data:
// Which item to update? Let's say it's item 0
items.remove(at: 0)
dueDates.remove(at: 0)
completeds.remove(at: 0)

// structs to the rescue!

struct ToDo { // name structs UpperCamelCase - they are Types!
    var item: String
    var dueDate: Date
    var isCompleted: Bool
    
    func printToDo() {
        print("Item: \(item), Date: \(dueDate), Completed: \(isCompleted)")
    }
}

var aToDoItem = ToDo(item: "Learn Structs", dueDate: Date.now, isCompleted: false)

// An array of ToDos
var toDos: [ToDo] = []

toDos.append(aToDoItem)
toDos.append(ToDo(item: "Learn Swift", dueDate: Date.now, isCompleted: false))
toDos.append(ToDo(item: "Build Apps", dueDate: Date.now + (60*60*24), isCompleted: false))
toDos.append(ToDo(item: "Take a Vacation", dueDate: Date.now + (60*60*60*24), isCompleted: false))

//print(toDos) // Totally ugly!

// How do I access elements of an array of structs?
// Dot notation after the index!
//for index in 0...toDos.count-1 {
//    print("Item: \(toDos[index].item), Completed: \(toDos[index].isCompleted)")
//}

// Or iterating through an array

for toDo in toDos {
    print("Item: \(toDo.item), Due: \(toDo.dueDate), Completed: \(toDo.isCompleted)")
}

toDos[1].isCompleted = true // no worries about getting out of sync
print("\nAfter Removal")
for toDo in toDos {
    print("Item: \(toDo.item), Due: \(toDo.dueDate), Completed: \(toDo.isCompleted)")
}

// We can even add a method to structs & call this with dot notation
print("\nFrom Method")
for toDo in toDos {
    toDo.printToDo()
}
*/

// Initialization
//struct ToDo { // name structs UpperCamelCase - they are Types!
//    var item: String
//    var dueDate: Date
//    var isCompleted: Bool
//}
//var toDo = ToDo(item: "", dueDate: Date.now, isCompleted: false)

// Struct properties are initialized when declared
//struct ToDo { // name structs UpperCamelCase - they are Types!
//    var item = ""
//    var dueDate = Date.now
//    var isCompleted = false
//
//    func printToDo() {
//        print("Item: \(item), Date: \(dueDate), Completed: \(isCompleted)")
//    }
//}
//var toDo = ToDo()
//print(toDo.item, toDo.dueDate, toDo.isCompleted)

// Classes - just change the keyword struct to class
//class ToDo { // name structs UpperCamelCase - they are Types!
//    var item = ""
//    var dueDate = Date.now
//    var isCompleted = false
//
//    func printToDo() {
//        print("Item: \(item), Date: \(dueDate), Completed: \(isCompleted)")
//    }
//}

// Things differ when we try to create a new variable
//var toDo = ToDo()
//toDo.item = "Learn Structs vs. Classes"
//toDo.dueDate = Date.now
//toDo.isCompleted = false
//
//toDo.printToDo()

// If you want to add elements when you create (initialize or instantiate) an object, we need to create a special initializer

//class ToDo { // name structs UpperCamelCase - they are Types!
//    var item: String
//    var dueDate = Date.now
//    var isCompleted = false
//
//    init(item: String) {
//        self.item = item
//    }
//
//    func printToDo() {
//        print("Item: \(item), Date: \(dueDate), Completed: \(isCompleted)")
//    }
////}
//
//var newToDo = ToDo(item: "Learn Classes")
//newToDo.printToDo()

/*
class ToDo { // name structs UpperCamelCase - they are Types!
    var item: String
    var dueDate: Date
    var isCompleted: Bool
    
    init(item: String, dueDate: Date, isCompleted: Bool) {
        self.item = item
        self.dueDate = dueDate
        self.isCompleted = isCompleted
    }
    
    convenience init(item: String) {
        self.init(item: item, dueDate: Date.now + (60*60*24), isCompleted: false)
    }
    
    func printToDo() {
        print("Item: \(item), Date: \(dueDate), Completed: \(isCompleted)")
    }
}

var newToDo = ToDo(item: "My New ToDo", dueDate: Date.now + (60*60*60*24), isCompleted: false)
var anotherToDo = ToDo(item: "2nd Item", dueDate: Date.now, isCompleted: false)
var toDos: [ToDo] = []
toDos.append(newToDo)
toDos += [anotherToDo]
toDos.append(ToDo(item: "Third item - date & completed set by convenience init"))

print("\nPrint array of toDos")
for toDo in toDos {
    toDo.printToDo()
}
*/

// STRUCT ARE VALUE TYPES
//struct Person {
//    var first: String
//    var last: String
//}
//var person1 = Person(first: "Biggie", last: "Smalls")
//var person2 = person1
//print("Person1: \(person1.first) \(person1.last)")
//print("Person2: \(person2.first) \(person2.last)")
//
//person1.first = "Chris"
//person1.last = "Wallace"
//print("Person1: \(person1.first) \(person1.last)")
//print("Person2: \(person2.first) \(person2.last)")

//class Person {
//    var first: String
//    var last: String
//
//    init(first: String, last: String) {
//        self.first = first
//        self.last = last
//    }
//}
//var person1 = Person(first: "Biggie", last: "Smalls")
//var person2 = person1
//print("Person1: \(person1.first) \(person1.last)")
//print("Person2: \(person2.first) \(person2.last)")
//
//person1.first = "Chris"
//person1.last = "Wallace"
//print("Person1: \(person1.first) \(person1.last)")
//print("Person2: \(person2.first) \(person2.last)")
//print(person1 === person2)

// INHERITENCE
class Horse {
    let legs = 4
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func makeSound() {
        print("Braaaaaay.")
    }
}

class Unicorn: Horse {
    let horn = 1
    
    override func makeSound() {
        super.makeSound()
        print("Twinkle, Twinkle")
    }
}

class Alicorn: Unicorn {
    let wings = 2
    
    override func makeSound() {
        super.makeSound()
        print("Flutter, Flutter")
    }
}

let appleJack = Horse(name: "AppleJack")
let rarity = Unicorn(name: "Rarity")
let twilightSparkle = Alicorn(name: "Twilight Sparkle")
print("AppleJack Sound")
appleJack.makeSound()
print("Rarity Sound")
rarity.makeSound()
print("Twilight Sparkle Sound")
twilightSparkle.makeSound()
