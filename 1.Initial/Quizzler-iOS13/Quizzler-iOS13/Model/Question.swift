//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Genesis on 8/26/21.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import Foundation

struct Question {
    var question : String
    var answer : [String]
    var correctAnswer : String
    
    init(q:String, a:[String], correctAnswer: String) {
        self.question = q
        self.answer = a
        self.correctAnswer = correctAnswer
    }
}
