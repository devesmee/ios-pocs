//
//  ViewController.swift
//  SmallestNumber
//
//  Created by Student on 07/09/2019.
//  Copyright © 2019 Esmee Kluijtmans. All rights reserved.
// will it work on git?

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//        labelArray.text = "\(numbers)"
    }
    var numbers = [0, 1]
    @IBOutlet weak var labelSmallest: UILabel!
    @IBOutlet weak var labelArray: UILabel!
    
    @IBAction func generateSmallest(_ sender: Any) {
        
        var smallest : Int = Int.max
        for number in numbers{
            if number < smallest{
                smallest = number
            }
        }
        labelSmallest.text = String(smallest)
    }
    
    @IBAction func refreshApp(_ sender: Any) {
        numbers = [Int.random(in: 0 ..< 20), Int.random(in: 0 ..< 20), Int.random(in: 0 ..< 20), Int.random(in: 0 ..< 20), Int.random(in: 0 ..< 20), Int.random(in: 0 ..< 20)]
        labelArray.text = "\(numbers)"
    }
}

