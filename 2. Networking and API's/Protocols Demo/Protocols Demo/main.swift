//
//  main.swift
//  Protocols Demo
//
//  Created by Genesis on 9/6/21.
//

//class Bird {
//
//    var isFemale = true
//
//    func layEgg(){
//        if isFemale{
//            print("The bird makes a new bird in a shell")
//        }
//    }
//
//    func fly(){
//        print("The bird flaps its wings and lifts off into the sext")
//    }
//}
//
//
//class Eagle: Bird {
//
//    func soar(){
//        print("The eagle glides in the air using air currents")
//    }
//
//}
//
//class Penguin: Bird{
//    func swim(){
//        print("the penguin paddles through the water")
//    }
//}
//
//struct FlyingMuseum {
//    func flyingDemo(flyingObject: Bird){
//        flyingObject.fly()
//    }
//}
//
//let myEagle = Eagle()
//myEagle.fly()
//myEagle.layEgg()
//myEagle.soar()
//
//
//let myPenguin = Penguin()
//myPenguin.layEgg()
//myPenguin.swim()
//myPenguin.fly()
//
//let museum = FlyingMuseum()
//museum.flyingDemo(flyingObject: myPenguin)


//Protocol

class Bird {

    var isFemale = true

    func layEgg(){
        if isFemale{
            print("The bird makes a new bird in a shell")
        }
    }
}


class Eagle: Bird, CanFly {
    func fly() {
       print("The eagle flaps its wings and lifts off into the sky.")
    }
    

    func soar(){
        print("The eagle glides in the air using air currents")
    }

}

class Penguin: Bird{
    func swim(){
        print("the penguin paddles through the water")
    }
}

struct FlyingMuseum {
    func flyingDemo(flyingObject: CanFly){
        flyingObject.fly()
    }
}

struct Airplane: CanFly {
    func fly() {
        print("the airplane uses the engine to lifts off into the air.")
    }
}


let myEagle = Eagle()
myEagle.fly()
myEagle.layEgg()
myEagle.soar()


let myPenguin = Penguin()
myPenguin.layEgg()
myPenguin.swim()

let myAirplane = Airplane()

let museum = FlyingMuseum()
museum.flyingDemo(flyingObject: myAirplane)

protocol CanFly{
    
    func fly()
}
