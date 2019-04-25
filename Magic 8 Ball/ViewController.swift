//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by MacBook Air on 25/04/2019.
//  Copyright © 2019 MacBook Air. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    var randomBallNUmber: Int = 0
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        newBallImage()
        
    }
    
    

    @IBOutlet weak var imageView: UIImageView!
    
    
    
    @IBAction func askButtonPressed(_ sender: UIButton) {
        newBallImage()
        
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        newBallImage()
    }
    
    func newBallImage()  {
        
        randomBallNUmber = Int.random(in: 0 ... 4)
        
       imageView.image = UIImage(named: ballArray[randomBallNUmber])
        
    }
    
    
    
    
}

