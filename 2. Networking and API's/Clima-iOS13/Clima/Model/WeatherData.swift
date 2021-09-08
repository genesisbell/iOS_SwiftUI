//
//  WeatherData.swift
//  Clima
//
//  Created by Genesis on 9/7/21.
//  Copyright © 2021 App Brewery. All rights reserved.
//

import Foundation

struct WeatherData: Codable {
    let name : String
    let main : Main
    let weather : [Weather]
}

struct Weather : Codable {
    let description : String
    let id : Int
}

struct Main : Codable {
    let temp : Double
}
