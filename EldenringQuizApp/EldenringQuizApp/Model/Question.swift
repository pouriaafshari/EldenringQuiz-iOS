//
//  Question.swift
//  EldenringQuizApp
//
//  Created by Kappa on 03/09/2024.
//

import Foundation

struct Question {
    let text: String
    let answer: String
    
    init(q: String, a: String) {
        self.text = q
        self.answer = a
    }
}
