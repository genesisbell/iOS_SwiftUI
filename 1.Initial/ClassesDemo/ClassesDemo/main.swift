//
//  main.swift
//  ClassesDemo
//
//  Created by Genesis on 8/31/21.
//

let skeleton = Enemy(health: 100, attackStrength: 10)
let skeleton2 = skeleton

skeleton.takeDamage(amount: 10)
print("health skeleton", skeleton.health)

print("health skeleton2", skeleton2.health)



//let dragon = Dragon()
//
//dragon.move()
//dragon.throwFire()
//dragon.wingSpan = 5
//dragon.attackStrength = 10
//dragon.attack()
