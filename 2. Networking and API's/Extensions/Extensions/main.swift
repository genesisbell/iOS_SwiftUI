//
//  main.swift
//  Extensions
//
//  Created by Genesis on 9/8/21.
//

//import UIKit
import Foundation

extension Double {
    func round(to places: Int) -> Double{
        let decimals = pow(10, Double(places))
        var n = self
        
        n = n * decimals
        n.round()
        n = n / decimals
        
        return n
        
    }
}

let myDouble = 3.14159

let myRoundedDouble = String(format: "%.1f", myDouble)


//myDouble.round(to: 3)
print(myDouble.round(to: 3))
