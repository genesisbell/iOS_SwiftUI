//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var btnTrue: UIButton!
    @IBOutlet weak var btnFalse: UIButton!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var btn3: UIButton!
    
    var quizBrain = QuizBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updatedUI()

    }

    @IBAction func btnPressed(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle!
        let correcAnswer = quizBrain.checkAnswer(userAnswer)
        
        if correcAnswer {
            sender.backgroundColor = UIColor.green
        }else{
            sender.backgroundColor = UIColor.red
        }
        
        quizBrain.nextQuestion()
        
        Timer.scheduledTimer(timeInterval:0.2, target: self, selector: #selector(updatedUI), userInfo: nil, repeats: false)
    }
    
    @objc func updatedUI(){
        scoreLabel.text = "Score: \(quizBrain.getScore())";
        questionLabel.text = quizBrain.getQuestionText()
        btnTrue.backgroundColor = UIColor.clear
        btnFalse.backgroundColor = UIColor.clear
        btn3.backgroundColor = UIColor.clear
        progressBar.progress = quizBrain.getProgress()
        btnTrue.setTitle(quizBrain.quiz[quizBrain.questionNumber].answer[0], for: .normal)
        btnFalse.setTitle(quizBrain.quiz[quizBrain.questionNumber].answer[1], for: .normal)
        btn3.setTitle(quizBrain.quiz[quizBrain.questionNumber].answer[2], for: .normal)
    }
}

