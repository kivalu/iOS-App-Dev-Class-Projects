//
//  ViewController.swift
//  Dicee
//
//  Created by Kivalu Ramanlal on 6/17/19.
//  Copyright © 2019 Kivalu Ramanlal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    @IBOutlet weak var leftDiceImageView: UIImageView!
    @IBOutlet weak var rightDiceImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        rollDice()
    }
    @IBAction func rollButtonPressed(_ sender: Any) {
        rollDice()
    }
    
    func rollDice() {
        let leftIndex = Int.random(in: 0 ... 5)
        let rightIndex = Int.random(in: 0 ... 5)
        leftDiceImageView.image = UIImage(named: diceArray[leftIndex])
        rightDiceImageView.image = UIImage(named: diceArray[rightIndex])
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        rollDice()
    }
}

