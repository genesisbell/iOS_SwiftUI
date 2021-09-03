//
//  Dragon.swift
//  ClassesDemo
//
//  Created by Genesis on 8/31/21.
//

class Dragon: Enemy {
    
    var wingSpan = 2
    
    func throwFire(){
        print("Throwing fire")
    }
    
    override func move(){
        print("Fly forward")
    }
    
    override func attack() {
        super.attack()
        print("Spit fire, does 10 damage")
    }
    
}
