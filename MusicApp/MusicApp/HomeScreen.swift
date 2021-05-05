//
//  ViewController.swift
//  MusicApp
//
//  Created by Student on 18/09/2019.
//  Copyright © 2019 Esmee Kluijtmans. All rights reserved.
//

import UIKit

class HomeScreen: UIViewController {
    
    
    
    @IBOutlet weak var MammaMia: UIButton!
    @IBOutlet weak var SOS: UIButton!
    @IBOutlet weak var SoLong: UIButton!
    @IBOutlet weak var IDoIDoIDoIDoIDo: UIButton!
    @IBOutlet weak var RockMe: UIButton!
    @IBOutlet weak var IveBeenWaitingForYou: UIButton!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.identifier == "GoToSongMammaMia"
        {
            let vc = segue.destination as? SongScreen
            vc?.titleSong = MammaMia.currentTitle!
        }
        else if segue.identifier == "GoToSongSOS"
        {
            let vc = segue.destination as? SongScreen
            vc?.titleSong = SOS.currentTitle!
        }
        else if segue.identifier == "GoToSongSoLong"
        {
            let vc = segue.destination as? SongScreen
            vc?.titleSong = SoLong.currentTitle!
        }
        else if segue.identifier == "GoToSongIDo"
        {
            let vc = segue.destination as? SongScreen
            vc?.titleSong = IDoIDoIDoIDoIDo.currentTitle!
        }
        else if segue.identifier == "GoToSongRockMe"
        {
            let vc = segue.destination as? SongScreen
            vc?.titleSong = RockMe.currentTitle!
        }
        else if segue.identifier == "GoToSongWaiting"
        {
            let vc = segue.destination as? SongScreen
            vc?.titleSong = IveBeenWaitingForYou.currentTitle!
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }


}

