//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
//    let softTime = 5
//    let mediumTime = 7
//    let hardTime = 12
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var progressBar: UIProgressView!
    
    let eggTimes = [
        "Soft": 5,
        "Medium": 7,
        "Hard": 12
    ]

    var timer = Timer()
    var player: AVAudioPlayer!
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        timer.invalidate()
        self.progressBar.progress = 0
        let hardness = sender.currentTitle!
        
        let result = eggTimes[hardness]
        
        //var runCount = result! * 60
        
        var runCount = result! * 60
        let progress = 1/Float(runCount + 1)
        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true){ timer in
            self.titleLabel.text = "\(runCount) seconds"
            self.progressBar.progress += progress
            if runCount == 0 {
                playSound(fileName: "alarm_sound", fileType: "mp3")
                self.titleLabel.text = "Done"
                timer.invalidate()
            }
            runCount -= 1
            
       
        }
        
        func playSound(fileName: String, fileType: String) {
            let url = Bundle.main.url(forResource: fileName, withExtension: fileType)
            player = try! AVAudioPlayer(contentsOf: url!)
            player?.play()
        }
        
//        for eggTime in eggTimes {
//            if(eggTime.key == hardness){
//                print(eggTime.value)
//            }
//        }
        
//        switch hardness {
//        case "Soft":
//            print(softTime)
//        case "Medium":
//            print(mediumTime)
//        case "Hard":
//            print(hardTime)
//        default:
//            print("Error")
//        }
    }
    

}
