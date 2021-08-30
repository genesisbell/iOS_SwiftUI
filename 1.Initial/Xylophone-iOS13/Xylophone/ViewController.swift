//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer?

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func btnPressed(_ sender: UIButton) {
        playSound(fileName: (sender.currentTitle)!, fileType: "wav")
        sender.alpha = 0.5
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2){
            sender.alpha = 1
        }        
    }
    
    func playSound(fileName: String, fileType: String) {
        let url = Bundle.main.url(forResource: fileName, withExtension: fileType)
        player = try! AVAudioPlayer(contentsOf: url!)
        player?.play()
                
    }
    
    
    
    //    @IBAction func btnCPressed(_ sender: UIButton) {
    //        playSound(fileName: "C", fileType: "wav")
    //        print(sender.currentTitle ?? "defaul value c")
    //    }
    //
    //    @IBAction func btnDPressed(_ sender: UIButton) {
    //        playSound(fileName: "D", fileType: "wav")
    //        print(sender.currentTitle ?? "default valu d")
    //    }
    //
    //    @IBAction func btnEPressed(_ sender: UIButton) {
    //        playSound(fileName: "E", fileType: "wav")
    //        print(sender)
    //    }
    //
    //    @IBAction func btnFPressed(_ sender: UIButton) {
    //        playSound(fileName: "F", fileType: "wav")
    //        print(sender)
    //    }
    //
    //    @IBAction func btnGPressed(_ sender: UIButton) {
    //        playSound(fileName: "G", fileType: "wav")
    //    }
    //
    //    @IBAction func btnAPressed(_ sender: UIButton) {
    //        playSound(fileName: "A", fileType: "wav")
    //    }
    //
    //    @IBAction func btnBPressed(_ sender: UIButton) {
    //        playSound(fileName: "B", fileType: "wav")
    //    }
        
    //    func playSound(fileName: String, fileType: String){
    //        guard let url = Bundle.main.url(forResource: fileName, withExtension: fileType) else { return }
    //
    //        do {
    //            try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
    //            try AVAudioSession.sharedInstance().setActive(true)
    //
    //            /* The following line is required for the player to work on iOS 11. Change the file type accordingly*/
    //            player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)
    //
    //            /* iOS 10 and earlier require the following line:
    //            player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileTypeMPEGLayer3) */
    //
    //            guard let player = player else { return }
    //
    //            player.play()
    //
    //        } catch let error {
    //            print(error.localizedDescription)
    //        }
    //    }

}

