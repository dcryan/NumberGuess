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
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func submitGuess(sender: AnyObject) {
    }

}

