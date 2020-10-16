//
//  ViewController.swift
//  Xylophone
//
//  Created by Pramod Suthar on 06/05/2020.
//  Copyright © 2020 Pramod Suthar. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        
        
        playSound(soundName : sender.currentTitle!)
        
        
    }
    
    
    func playSound(soundName : String) {
        let url = Bundle.main.url(forResource: "C", withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
    

}

