//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Kivalu Ramanlal on 6/25/19.
//  Copyright © 2019 Kivalu Ramanlal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var backgroundView: UIImageView!
    let ballImageArr = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    var ballImageView = UIImageView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        backgroundView.transform = CGAffineTransform(rotationAngle: CGFloat(Double.pi)/2)
        backgroundView.frame = UIScreen.main.bounds
        addMainImage()
    }
    
    func addMainImage() {
        let screenSize = UIScreen.main.bounds
        let ballImage = UIImage(named: "ball1")
        ballImageView = UIImageView(image: ballImage!)
        ballImageView.frame = CGRect(x: (screenSize.width - ballImage!.size.width)/2, y: (screenSize.height - ballImage!.size.height)/2, width: ballImage!.size.width, height: ballImage!.size.height)
        ballImageView.alpha = 0
        view.addSubview(ballImageView)
        ballImageView.contentMode = .scaleAspectFit
        ballImageView.fadeIn()
    }
    
    @IBAction func askButton(_ sender: Any) {
        getMagicAnswer()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        getMagicAnswer()
    }
    
    func getMagicAnswer() {
        ballImageView.image = UIImage(named: ballImageArr.randomElement()!)
    }

}


