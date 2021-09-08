//
//  WeatherModel.swift
//  Clima
//
//  Created by Genesis on 9/8/21.
//  Copyright © 2021 App Brewery. All rights reserved.
//

import Foundation

struct WeatherModel {
    let conditionId : Int
    let cityName: String
    let temperature: Double
    
    //Computed property
    var conditionName: String {
        switch conditionId {
            case 200...232:
                return "cloud.bolt"
            case 300...321:
                return "cloud.drizzle"
            case 500...531:
                return "cloud.rain"
            case 600...622:
                return "cloud.snow"
            case 701...781:
                return "cloud.fog"
            case 800:
                return "sun.max"
            case 801...804:
                return "cloud.bolt"
            default:
                return "cloud"
        }
    }
    
    var temperatureString : String {
        return String(format: "%.1f", temperature)
    }
    
//    func getConditionName(weatherId: Int) -> String{
//        switch weatherId {
//            case 200...232:
//                return "cloud.bolt"
//            case 300...321:
//                return "cloud.drizzle"
//            case 500...531:
//                return "cloud.rain"
//            case 600...622:
//                return "cloud.snow"
//            case 701...781:
//                return "cloud.fog"
//            case 800:
//                return "sun.max"
//            case 801...804:
//                return "cloud.bolt"
//            default:
//                return "cloud"
//        }
//
//    }
}
