//: Playground - noun: a place where people can play
// Comment
/* Multi Line Comment
 */


//Int
//Bool
//String
//Double
//Float


import UIKit
import Darwin


// ******** Important Declarations ********* //

// Important Declarations

// Variable
var str1 = "Hello, playground"

//Constants
let pi1 = 3.141592
let numberOfSteps1: Int = 450

// Arrays
let friends1: Array<String> = ["Bob","Fred","Paul"]
let randNums1 = [3,6,9]
var groceries1 = [String]()

//Multi Dimensional Array
var array1: [[String]] = [["00", "10", "20"],["01", "11", "21"]]

// Dictionary
var superHeroes1 = [String : String]()
superHeroes1["Superman"] = "Clark Kent"
let heroes1 = ["Superman" : "Clark Kent", "Flash" : "Barry Allen", "Batman" : "Bruce Wayne"]

// Tuple : Used when you want to get many values at the same time from a variable
var stats1 = (height:6.25, weight:179, name:"Nikhil")
print("Height: \(stats1.height), Weight: \(stats1.weight), Name: \(stats1.name)")


// ******** END  ********** //



var str = "Hello, playground"

let pi = 3.141592

print("pi is equal to \(pi)")

let numberOfSteps: Int = 450

let maxInt: Int = 9223372036854775807

let maxUnsignedInt: UInt64 = UInt64.max

print("Max Float: \(FLT_MAX)")


print("Double Float: \(DBL_MAX)")

let floatPrecision: Float = 1.999999 + 0.0000005
print("Float Precision: ", floatPrecision)

let isOver18 = true

let myName = "Nikhil"

let statement = "My Name is " + myName

print(statement + "!")

// Casting
print("I am an int now \(Int(floatPrecision))")
print("I am an Float now \(Float(maxInt))")
print("I am a Bool Now \(Bool(maxInt))")

let myAge = "6.2"
let myAgeInt = Int(myAge)
let myAgeFloat = (myAge as NSString).floatValue


print("5 + 3 = \(5 + 3)")
print("5 - 3 = \(5 - 3)")
print("5 * 3 = \(5 * 3)")
print("5 / 3 = \(5 / 3)")
print("5.3 % 3 = \(5.3 % 3)")

var num: Int = 1

print("num++ = \(num++)")
print("++num = \(++num)")

print("Rand Num: \(arc4random() % 11)")


//Conditional Statements

let age: Int = 17

if(age < 16){
    print("You can go to school")

}else if ((age >= 16) && (age < 18)){

    print("You can drive")
    
}else {
    print("You can vote")
}


let ingredients = "pinto beans"
switch ingredients {
    case "pasta", "tomato":
        print("How about spaghetti")
        fallthrough
    case "potato":
        print("How about baked potato")
    case "pinto beans":
        print("How about a burrito")
default:
        print("Burger sounds great ")

}

// Switch Statements with a range
let testScore = 89
switch testScore {
case 93...100:
    print("You got an A")
case 85...92:
    print("You got a B")
default:
    print("Go Learn")
    
}
// Arrays
let friends: Array<String> = ["Bob","Fred","Paul"]
let randNums = [3,6,9]

print("Rand Num1 : \(randNums[0])")

// Empty array that holds Strings
var groceries = [String]()
groceries.append("Tomato")
groceries.append("Potato")
groceries.append("Beans")
print("Num of groceries: \(groceries.count)")

groceries.insert("Flour", atIndex: 1)
print(groceries)

groceries[1] = "Whole Wheat"
print(groceries)

groceries.removeAtIndex(0)
print(groceries)

// Find an item in a string array by using indexOf
if let match = groceries.indexOf("Beans"){
    groceries.removeAtIndex(match)
    print(groceries)
}


// Multi Dimensioanl Array and FOr Loop
var array: [[String]] = [["00", "10", "20"],["01", "11", "21"]]
for column in array {
    for row in column {
        print("\(row) : \(column)")
        }
}


// Dictionary 
var superHeroes = [String : String]()

superHeroes["Superman"] = "Clark Kent"

print("Number of Super Heroes : \(superHeroes.count)")

// Remove values from Dictionary
superHeroes.removeValueForKey("Superman")

// Tuple : Used when you want to get many values at the same time from a variable

var stats = (height:6.25, weight:179, name:"Nikhil")

print("Height: \(stats.height), Weight: \(stats.weight), Name: \(stats.name)")


// for loop
for var i: Int = 1; i <= 10; i += 1 {
    if Bool(i%2){
        continue
    }
    if i == 10 {
        break
    }
    
    print(i)
}

// for in loop
for j in -5...5{
    print("\(j)")
}

// Cycle through Strings
var quote = "Sometimes when you innovate, you make mistakes. It is best to admit them quickly, and get on with improving your other innovations"

var numberOfAs: Int = 0

for singleChar in quote.characters {
    if singleChar == "a"{
        numberOfAs += 1
    }

}

print("Number of A's = \(numberOfAs)")

// Cycle Through Arrays
let people: Array<String> = ["BMW","Audi","Tesla"]

for person in people{
    print(person)
}

// Cycle through dictionaries
let heroes = ["Superman" : "Clark Kent", "Flash" : "Barry Allen", "Batman" : "Bruce Wayne"]
for (pubName, sIdent) in heroes{
    print("\(pubName) is \(sIdent)")
}

// While Loops
var k = 0
while k <= 10{
    print(k)
    k += 1
}

// Do While is replaced by Repeat While
var l = 0
repeat{
    print(l)
    l += 1
} while l <= 10


// Functions

func sayHello(name: String){
    print("Hello \(name)")
}

sayHello("WallE")


func getSum(num1: Int = 1, num2: Int = 2) -> Int{
    return num1 + num2
}

print(getSum(1,num2: 5))


func getSum2(nums: Int...) -> Int{
    var sum: Int = 0

    for num in nums{
        sum += num
    }
    return sum
}

//print("Sum: \(getSum2(1,2,3,))")

var strA: String = "happy"
var strB: String = "relax"

//inout change value inside and outsid
func makeUpperCase(inout strA: String, inout strB: String){
    strA = strA.uppercaseString
    strB = strB.uppercaseString
}

makeUpperCase(&strA, strB: &strB)


// Return Multiple Types from a Function
// Returns a Tuple

func getMult(number: Int) -> (x2: Int, x3: Int){
    var x2 = number * 3
    var x3 = number * 4
    return(x2, x3)
}

var answer = getMult(5)
// A tuple is being passed back here.
print(answer.x2)
print(answer.x3)


func average(nums: Int...) -> Double{
    var sum = 0
    
    for num in nums{
        sum += num
    }
    
    return Double(sum) / Double(nums.count)
}

func sum(nums: Int...) -> Double{
    var sum = 0
    
    for num in nums{
        sum += num
    }
    
    return Double(sum)


}

func doMaths(mathOption: String) -> (Int...) -> Double{
    if mathOption == "average"{
        return average
        
    } else {
        return sum
    }
    
}


var mathFunc = doMaths("averages")
print(mathFunc(1,2,3))


// Weird Ways to use functions.
// Function inside a Function
func multiplyIt() -> ((Int, Int) -> String){
    func multiply(num1: Int, num2: Int) -> String {
        return "\(num1) * \(num2) = \(num1 * num2)"
    }
    return multiply
}

let getValue = multiplyIt()
print(getValue(2,3))


// Closures , work like functions and they can be anonymous and have no name - Closures = Anonymous Functions

// Basic Layout of a Closure
//{ (param: ParamType, param2: ParamType) -> returnType in
//    statements
//    return values
//
//}

// receives and int and returns an int
var square: (Int) -> (Int) = { num in
    return num * num

}

print(square(5))

// Assign a closure to a variable
var squareCopy = square


// New Closure, receives an inte and returns and int
var sayGoodBye: () -> () = {
    print("Good Bye")
}

sayGoodBye()

// Takes Nothing but retruns a string 
var sayHappy: () -> (String) = {
    "Happy Birthday"
}

print(sayHappy())


// Increment Num Closure
var num3 = 3
var incrementNum = {
    print("num3: \(++num3)")
}

incrementNum()


// Structs - Very Simalar to Classes
// Struct is a Custom DataType, basically used when you dont have a need to inherit. Also when you want to model a simple datastructures

struct Runner{

    var name: String
    var milePace: Double
    
    func displayMP() -> String {
    
        let absPace = Int(self.milePace)
        let prctMin = self.milePace - Double(absPace)
        let seconds = prctMin * 60
        
        return "\(absPace) min : \(seconds))"
    }
    
    // Computed Property
    var marathonTime: Double{
        get{
            return (milePace * 26.2)/60
        }
    }
    
    //Static Constant
    static let marathonDist = 26.2
    
    
}


let dennisKimeto = Runner(name: "Dennis Kimeto", milePace: 4.68)
let emanuelMutai = Runner(name: "Emanuel Mitai", milePace: 4.7)

print("\(dennisKimeto.name) : \(dennisKimeto.displayMP())")


print("\(emanuelMutai.name) : \(emanuelMutai.displayMP())")


// Print Computed Properties - SWIFT Only
print("Time to finish Marathon: \(dennisKimeto.marathonTime) hours")

// Print Static Value
print("Marathon : \(Runner.marathonDist)")

// Classes
class Animal {
    var name: String = "No Name"
    var height: Double = 0.0
    var weight: Double = 0.0
    var sound: String = "No Sound"
    
    // init method is like a constructor in Java; Also there is a default init
    init(name: String, height: Double, weight:Double, sound:String){
        self.name = name
        self.height = height
        self.weight = weight
        self.sound = sound
        
    }
    
    func getInfo() {
        print("\(self.name) is \(self.height) cms tall and weighs \(self.weight ) kgs and likes to say \(self.sound)")
        
    }
    
    // Method Overloading
    func getSum(num1: Int, num2: Int) -> Int{
        return num1 + num2
    }
    
    // Overloaded Method
    func getSum(num1: Double, num2: Double) -> Double{
        return num1 + num2
    }
    
    // Classes can have Computed Properties and also Static Attributes like Struts as welll

}

//Creating an Animal Object
var rover = Animal(name: "Rover", height: 38, weight: 12.7, sound:"Ruff")
rover.getInfo()


// Inheritance
class Dog: Animal{
    // final prevents a method from being overriden
    final func digHole(){
        print("\(self.name) digs a hole")
        
    }
    
    // override a super class method
    override func getInfo() {
        super.getInfo()
        print(" and also digs a hole")
    }
}


var spot = Dog(name: "Spot", height: 38, weight: 12.7, sound: "Woof")
spot.digHole()
spot.getInfo()

// Polymorphism

func printGetInfo(animal: Animal){
    animal.getInfo()
    
}

printGetInfo(spot)
printGetInfo(rover)

// Check Object Type 
print("Is Rover an animal \(rover is Animal)")
print("Is Rover an animal \(rover is Dog)")


// Protocols
// Protocols are like interfaces in other languages

protocol Flyable {
    var flies: Bool {get set}
    
    func fly(distMiles: Double) -> String
}

class Vehicle : Flyable{
    
    var flies: Bool = false
    var name: String = "No Name"
    
    func fly(distMiles: Double) -> String {
        if(self.flies){
            return "\(self.name) flies \(distMiles) miles"
        }
        else{
            return "\(self.name) cannot fly"
        }
    }

}

var fordF150 = Vehicle()
fordF150.name = "Ford F-150"
fordF150.flies = false
var canFly: String = fordF150.fly(300)
print(canFly)



//Extensions : Provides a way to add functionality without overriding existing functionality. 
// Can be done on our own object and also on doubles, strings etc.

//extension String {
//    var asArrary: [Character]{
//        var result = [Character]()
//        
//        for char in self {
//            result.append(char)
//        }
//        
//        return result
//    }
//}

// Generics
// Accepts any type of Array
func printAnyArray<T>(anything: [T]){
    for element in anything{
        print("\(element), ")
    }
    
    print()
}

printAnyArray(["This", "Is", "Great"])
printAnyArray([1,2,3])
// The above works with array.


//The below works with sequences
func printAnySeq<T: SequenceType>(anything: T){
    for element in anything{
        print("\(element), ")
    }
    
    print()
}

printAnySeq(["This", "Is", "Great"])
printAnySeq([1,2,3])
// printAnySeq("This is awesome")


// Test for quality - Equatable
func areTheyEqual<T: Equatable>(val1: T, val2: T) -> Bool{
    return val1 == val2
}

print(areTheyEqual(1,val2: 1))



// Test for quality - Comparable
func compareThem<T: Comparable>(val1: T, val2: T) -> Bool{
    return val1 < val2
}

print(compareThem(2, val2: 1))
print(compareThem("a", val2: "b"))


// Enumerators - Enums

enum Color: Int{
    // Default values are 0,1 etc.
    case blue
    case green
    case red
    case purple
    case yellow
    
    init(){
        self = .blue
    }
    
    
    func getData() -> String{
        switch(self){
        case .blue: return "Blue"
        case .green: return "Green"
        case .red: return "Red"
        case .purple: return "Purple"
        case .yellow: return "Yellow"
        default: return "Not Found"
        
        }
    
    
    }

}


var someColor = Color()
print(someColor.rawValue)


var favColor = Color.green
print(favColor.rawValue)

if(favColor == Color.green)
{
    print("Its Green")
}

print(favColor.getData())











