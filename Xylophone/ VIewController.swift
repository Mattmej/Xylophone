//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation     // Audio Visual Foundation



class ViewController: UIViewController, AVAudioPlayerDelegate{
    
    var audioPlayer: AVAudioPlayer!
    
    let soundArray = ["note1", "note2", "note3", "note4", "note5", "note6", "note7"]

    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func notePressed(_ sender: UIButton) {
        
        var selectedSoundFileName: String = soundArray[sender.tag - 1]
        print(selectedSoundFileName)
        
        playSound(filename: selectedSoundFileName)
       
        
    }
    
    func playSound(filename: String) {
        
        // Sets up location of our sound
        let soundURL = Bundle.main.url(forResource: filename, withExtension: "wav")
        
        // Try to set up audio player.
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
        }
        catch {
            print(error)
        }
        
        audioPlayer.play()
        
    }
}

