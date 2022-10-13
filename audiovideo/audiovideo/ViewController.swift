//
//  ViewController.swift
//  audiovideo
//
//  Created by APPLE on 13/10/22.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    var Player = AVAudioPlayer()
    
    
    
    @IBAction func playBtn(_ sender: UIButton) {
        Player.play()
    }
    
    
    @IBAction func pauseBtn(_ sender: UIButton) {
        Player.pause()
    }
    
    
    
  
    
    @IBAction func replayBtn(_ sender: UIButton) {
        Player.currentTime = 0
    }
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        do{
            let audioPath =
            Bundle.main.path(forResource : "inspiring-cinematic-ambient-116199",ofType: "mp3")
            try Player = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPath!) as URL)
        }
        catch{
        }
    }
}
        
        
        
        
        
        
    




