//
//  CoinModel.swift
//  ByteCoin
//
//  Created by Genesis on 9/9/21.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import Foundation


struct CoinModel {
    let rate : Double
    
    func rateString() -> String {
        return String(format: "%.2f", rate)
    }
}

