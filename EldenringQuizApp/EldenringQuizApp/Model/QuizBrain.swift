//
//  QuizBrain.swift
//  EldenringQuizApp
//
//  Created by Kappa on 03/09/2024.
//

import Foundation

struct QuizBrain {
    
    var questionNumber = 0
    var score = 0
    
    let quiz = [
        Question(q: "Elden Ring was developed by FromSoftware and published by Bandai Namco.", a: "True"),
        Question(q: "Elden Ring is set in a world created by Hidetaka Miyazaki and George R. R. Martin.", a: "True"),
        Question(q: "Elden Ring's world is called 'The Lands Between'.", a: "True"),
        Question(q: "Elden Ring features a fully multiplayer campaign mode where you can complete the story with friends.", a: "False")
    ]
    
    mutating func checkAnswer(answer userAnswer: String) -> Bool{
        if userAnswer == quiz[questionNumber].answer {
            self.score += 1
            return true
        } else {
            return false
        }
    }
    
    func currentQuestion() -> String {
        return quiz[self.questionNumber].text
    }
    
    func currentProgress() -> Float {
        return Float(questionNumber + 1)/Float(quiz.count)
    }
    
    mutating func nextQuestion() {
        if questionNumber+1 < quiz.count {
            questionNumber += 1
        } else {
            questionNumber = 0
            score = 0
        }
    }
}
