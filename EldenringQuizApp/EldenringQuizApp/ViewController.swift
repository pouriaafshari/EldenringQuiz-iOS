//
//  ViewController.swift
//  EldenringQuizApp
//
//  Created by Kappa on 02/09/2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var questionBox: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var progressViewBar: UIProgressView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        progressViewBar.progress = 1.0
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        
    }
    
}
