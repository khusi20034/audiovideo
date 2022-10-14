//
//  thirdViewController.swift
//  IOS_INTERN_PROJECT
//
//  Created by APPLE on 14/10/22.
//

import UIKit
import AVFoundation

class thirdViewController: UIViewController {
    var player = AVAudioPlayer()

    @IBAction func playAudio(_ sender: UIButton) {
        player.play()
    }
    
    @IBAction func pauseAudio(_ sender: UIButton) {
        player.pause()
    }
    
    
    @IBAction func replayAudio(_ sender: UIButton) {
        player.currentTime = 0
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
   
        

        // Do any additional setup after loading the view.
        do{
                  let audioPath =
                  Bundle.main.path(forResource : "inspiring-cinematic-ambient-116199",ofType: "mp3")
                  try player = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPath!) as URL)
              }
              catch{
              }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
