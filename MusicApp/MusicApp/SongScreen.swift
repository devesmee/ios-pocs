//
//  SongScreen.swift
//  MusicApp
//
//  Created by Student on 18/09/2019.
//  Copyright © 2019 Esmee Kluijtmans. All rights reserved.
//

import UIKit
import AVFoundation

class SongScreen: UIViewController {
    
    @IBOutlet weak var songTitle: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var timerLabel: UILabel!
    
    var titleSong:String = ""
    var audioPlayer: AVAudioPlayer?
    var isPlaying: Bool = false
    var timer = Timer()
    var seconds = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        progressBar.setProgress(0, animated: false)
        timerLabel.text = timeString(time: TimeInterval(seconds))
        let url = Bundle.main.url(forResource: titleSong, withExtension: "mp3")
        do{
            try
            audioPlayer = AVAudioPlayer(contentsOf: url!)
            }
            catch{
                print("error")
            }
        songTitle.text = titleSong
    }
    
    

    @IBAction func playSong(_ sender: UIButton) {
            if isPlaying
            {
                audioPlayer?.pause()
                sender.setImage(UIImage(named:"playButton.png"),
                                for: .normal);
                isPlaying = false
                timer.invalidate()
                
            }
            else
            {
                audioPlayer?.play()
                sender.setImage(UIImage(named:"pauseButton.png"),
                                for: .normal);
                isPlaying = true;
                runTimer()
            }
    }
    
    func runTimer() {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self,   selector: (#selector(SongScreen.updateTimer)), userInfo: nil, repeats: true)
            progressBar.setProgress(0.1, animated: true)
    }
    
    @objc func updateTimer() {
        seconds += 1
        timerLabel.text = timeString(time: TimeInterval(seconds))
    }
    
    func timeString(time:TimeInterval) -> String {
        let minutes = Int(time) / 60 % 60
        let seconds = Int(time) % 60
        return String(format:"%02i:%02i", minutes, seconds)
    }
    

    
}
