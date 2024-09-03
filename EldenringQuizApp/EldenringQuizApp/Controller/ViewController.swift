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
    
    var quizBrain = QuizBrain()

    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        progressViewBar.progress = 0.0
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        let userAnswer = sender.titleLabel!.text!
        print(sender.titleLabel!.text!)
        if quizBrain.checkAnswer(answer: userAnswer) {
            sender.backgroundColor = UIColor.green
        } else {
            sender.backgroundColor = UIColor.red
        }
        
        quizBrain.nextQuestion()
        
        Timer.scheduledTimer(withTimeInterval: 0.2, repeats: false) {Timer in self.updateUI() }
    }
    
    func updateUI() {
        questionBox.text = quizBrain.currentQuestion()
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
        progressViewBar.progress = quizBrain.currentProgress()
        scoreLabel.text = "Score: \(quizBrain.score)"
    }
    
}
