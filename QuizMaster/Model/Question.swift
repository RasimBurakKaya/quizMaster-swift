//
//  Quiz.swift
//  QuizMaster
//
//  Created by Rasim Burak Kaya on 4.03.2024.
//

import Foundation


struct Question{
    let questionText: String
    let choices: [String]
    let answer: String
    
    init(questionText: String, choices: [String], answer: String) {
        self.questionText = questionText
        self.choices = choices
        self.answer = answer
    }
    
}
