//
//  ViewController.swift
//  MusicPlayer
//
//  Created by Jian Ting Li on 7/17/19.
//  Copyright © 2019 Jian Ting Li. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    private var audioPlayer: AVAudioPlayer?
    private var musicList = ["creative", "followLight"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    private func playMusic(songName: String, fileType: String) {
        if let soundURL =  Bundle.main.url(forResource: songName, withExtension: fileType) {
            do {
                try audioPlayer = AVAudioPlayer(contentsOf: soundURL)
            } catch {
                print(error)
            }
        } else {
            print("no sound url")
        }
    }

    @IBAction func musicControl(_ sender: UIButton) {
        if audioPlayer?.isPlaying == true {
            audioPlayer?.stop()
        } else {
            switch sender.tag {
            case 0:
                playMusic(songName: musicList[sender.tag], fileType: "mp3")
            case 1:
                playMusic(songName: musicList[sender.tag], fileType: "mp3")
            default:
                break
            }
            audioPlayer?.play()
        }
    }
    
}

