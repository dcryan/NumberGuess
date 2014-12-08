//
//  ViewController.swift
//  NumberGuess
//
//  Created by Daniel Ryan on 12/7/14.
//  Copyright (c) 2014 dcryan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var guessText: UITextField!
    @IBOutlet weak var feedBackText: UILabel!
    @IBOutlet weak var retryButton: UIButton!
    
    var randomNumber:Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        

        newGame()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func submitGuess(sender: AnyObject) {
        var guessNumber = guessText.text.toInt()
        
        if(guessNumber == randomNumber)
        {
            feedBackText.text = "Got it!"
            retryButton.hidden = false
        }
        else
        {
            feedBackText.text = "Try again..."
        }

    }

    @IBAction func restart(sender: AnyObject) {
        newGame()
    }
    
    func newGame()
    {
        randomNumber = Int(arc4random() % 6)
        println(randomNumber)
        feedBackText.text = ""
        retryButton.hidden = true
    }
}

