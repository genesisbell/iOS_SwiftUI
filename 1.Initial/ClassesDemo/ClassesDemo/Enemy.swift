//
//  Enemy.swift
//  ClassesDemo
//
//  Created by Genesis on 8/31/21.
//

class Enemy {
    var health: Int
    var attackStrength: Int
    
    init(health: Int, attackStrength: Int) {
        self.health = health
        self.attackStrength = attackStrength
    }
    
    func takeDamage(amount: Int){
        health = health - amount
    }
    
    func move(){
        print("Walk forward")
    }
    
    func attack(){
        print("Land a hit, does \(attackStrength) damage")
    }
}
