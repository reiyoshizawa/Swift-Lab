//: ## Lesson 6 Exercises - Classes, Properties and Methods

import UIKit

//: __Problem 1__
//:
//: __1a.__
//: The compiler is complaining because the class Animal has no initializers. Write an init method for the Animal class and quiet this error. Include a mechanism to initialize the length of the Animal's tail using the Tail struct provided.
struct Tail {
    let lengthInCm: Double
}

class Animal {
    var species: String = ""
    let tail: Tail
    init(species: String, tail: Tail) {
        self.species = species
        self.tail = tail
    }
}
//: __1b.__
//: Instantiate and initialize a few different Animals.
let dog = Animal(species: "dog", tail:Tail(lengthInCm: 10.0))
let cat = Animal(species: "cat", tail:Tail(lengthInCm: 15.0))
print("\(dog.species)'s tail is \(dog.tail) and \(cat.species)'s tail is \(cat.tail)")

//: __Problem 2__
//:
//: Below are the beginnings of the Peach class.
class Peach {
    let variety: String
    
    // Softness is rated on a scale from 1 to 5, with 5 being the softest
    var softness: Int
    
//    var varieties: [Peach]
    
    init(variety: String, softness: Int) {
        self.variety = variety
        self.softness = softness
    }
    
    func ripen() -> String{
        switch self.softness {
        case 1...3:
            return "the peach is not ripe"
        case 4:
            return "the peach is almost ripe"
        case 5:
            return "the peach is perfectlly ripe"
        default:
            return ""
        }
    }
}
let peach = Peach(variety: "White Peaches", softness: 5)
print(peach.ripen())

//: __2a.__
//: Add a type property to the Peach class called "varieties". It should hold an array of different types of peaches.
//:
//: __2b.__
//: Add an instance method called ripen() that increases the value of the stored property, softness, and returns a string indicating whether the peach is ripe.
//:
//: __2c.__
//: Create an instance of the Peach class and call the method ripen().

//: __Problem 3__
//:
//: __3a.__
//:Add the computed property, "cuddlability", to the class, FluffyDog. Cuddlability should be computed based on the values of the stored properties, fluffiness and droolFactor.
//var theFluffiestDog = UIImage(named:"fluffyDog")!
class FluffyDog {
    let name: String
    let fluffiness: Int
    let droolFactor: Int
    
    init(name: String, fluffiness: Int, droolFactor: Int) {
        self.name = name
        self.fluffiness = fluffiness
        self.droolFactor = droolFactor
    }
    
    var cuddlability: Int {
        get {
            return fluffiness * droolFactor
        }
    }
    
    func chase(_ wheeledVehicle: String)-> String {
        return "Where are you going, \(wheeledVehicle)? Wait for me! No, don't go! I will catch you!"
    }
}
let fluffyDog = FluffyDog(name: "fluffy", fluffiness: 5, droolFactor: 5)
print(fluffyDog.cuddlability)
print(fluffyDog.chase("fluffy Machine"))

//: __3b.__
//: Instantiate and initialize an instance of the class, FluffyDog. Use it to call the method, chase().

//: __Problem 4__
//:
//: __4a.__
//: Write an instance method, bark(), that returns a different string based on the value of the stored property, size.
enum Size: Int {
    case small
    case medium
    case large
}

class ChattyDog {
    let name: String
    let breed: String
    let size: Size
    
    init(name: String, breed: String, size: Size) {
        self.name = name
        self.breed = breed
        self.size = size
    }
    
    func bark() -> String{
        switch self.size {
        case .small:
            return "Woof"
        case .medium:
            return "Woooooffff"
        case .large:
            return "WOOFFFFFFF"
        }
    }
    
    func speak() -> String{
        switch self.size {
        case .small:
            return "Woof"
        case .medium:
            return "Woooooffff"
        case .large:
            return "WOOFFFFFFF"
        }
    }
}
let sakura = ChattyDog(name: "sakura", breed: "shiba", size: Size.medium)
print(sakura.bark())
print(sakura.speak())

//: __4b.__
//: Create an instance of ChattyDog and use it to call the method, bark().

//: __4c.__
//: Rewrite the method, bark(), as a type method and rename it speak(). Call your type method to test it out.

//: __Problem 5__
//:
//:__5a.__
//: Write an initialization method for the House class below.
enum Quality {
    case poor, fair, good, excellent
}

enum NaturalDisaster {
    case earthquake
    case wildfire
    case hurricane
}

class House {
    var numberOfBedrooms: Int = 0
    let location: Quality
    
    init(numberOfBedrooms: Int, location: Quality) {
        self.numberOfBedrooms = numberOfBedrooms
        self.location = location
    }
    
    var worthyOfAnOffer: Bool {
        get {
            if (numberOfBedrooms > 2 && (self.location == .good || self.location == .excellent)) {
                return true
            } else {
                return false
            }
        }
    }
    
    func willStayStanding(_ naturalDisaster:NaturalDisaster)-> Bool {
        switch naturalDisaster {
        case .earthquake:
            return true
        case .wildfire:
            return true
        case .hurricane:
            return false
        }
    }
}
let myHouse = House(numberOfBedrooms: 5, location: .excellent)
print(myHouse.willStayStanding(NaturalDisaster.earthquake))
print(myHouse.worthyOfAnOffer)

//: __5b.__
//: Create an instance of the House class and use it to call the method, willStayStanding().  This method takes in a parameter of type NaturalDisaster and return a Bool indicating whether the house will stay standing in a given natural disaster.

//: __5c.__
//: Add a computed property called, "worthyOfAnOffer". This property should be a Bool, whose return value is dependent upon some combination of the stored properties, numberOfBedrooms and location.






