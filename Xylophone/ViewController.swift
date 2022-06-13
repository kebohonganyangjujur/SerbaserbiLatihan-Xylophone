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
    
    var player : AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    func playSound() {
        guard let url = Bundle.main.url(forResource: "C", withExtension: "wav") else { return }

        do {
            
            let player = try AVAudioPlayer(contentsOf: url)

            player.play()

        } catch let error {
            print(error.localizedDescription)
        }
    }
    @IBAction func buttonPressed(_ sender: UIButton) {
        print("Button pressed")
        print(sender.currentTitle)
    }
    
    

}

