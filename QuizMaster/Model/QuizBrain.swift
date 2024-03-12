//
//  QuizBrain.swift
//  QuizMaster
//
//  Created by Rasim Burak Kaya on 4.03.2024.
//

import Foundation
import UIKit

struct QuizBrain{
    let quiz = [Question(questionText: "Where is the strongest muscle in the human body?", choices: ["Jaw", "Abdomen", "Leg", "Back" ], answer: "Jaw"), Question(questionText: "What country has the most islands?", choices: ["Iceland", "Denmark", "Norway", "Sweden"], answer: "Sweden"), Question(questionText: "How many dots appear on a pair of dice?", choices: ["36", "42", "21", "18"], answer: "42"), Question(questionText: "Where is the largest desert in the world?", choices: ["Antarctica", "Saudi Arabia", "Bahrain", "Greenland"], answer: "Antarctica"), Question(questionText: "In what capital would you find The Little Mermaid statue?", choices: ["Baku", "Ankara", "Copenhagen", "Stockholm"], answer: "Copenhagen"), Question(questionText: "What sporting event has a strict dress code of all white?", choices: ["Roland-Garros", "WNBA", "Volleyball Nation's League", "Wimbledon"], answer: "Wimbledon"), Question(questionText: "Which football player has won the 2023 Ballondor prize?", choices: ["Erling Haaland", "Lionel Messi", "Kylian Mbappe", "Vinicius Junior"], answer: "Lionel Messi"), Question(questionText: "Where is Disney's European theme park?", choices: ["Berlin", "Paris", "Istanbul", "Los Angeles"], answer: "Paris"), Question(questionText: "What planet is closest to the sun?", choices: ["Mercury", "Earth", "Jupiter", "Venus"], answer: "Mercury"), Question(questionText: "What company was originally called Cadabra?", choices: ["Microsoft", "Apple", "Samsung", "Amazon"], answer: "Amazon")]
    
    var questionNumber = 0
    var score = 0
    
    func getQuestionNumber() -> Int{
        return questionNumber
    }
    
    func getScore() -> Int{
        return score
    }
    
    func getQuestionText() -> String{
        return quiz[questionNumber].questionText
    }
    
    func getChoice1() -> String{
        return quiz[questionNumber].choices[0]
    }
    
    func getChoice2() -> String{
        return quiz[questionNumber].choices[1]
    }
    
    func getChoice3() -> String{
        return quiz[questionNumber].choices[2]
    }
    
    func getChoice4() -> String{
        return quiz[questionNumber].choices[3]
    }
    
    func getAnswer() -> String{
        return quiz[questionNumber].answer
    }
    
    mutating func getNextQuestion(){
       questionNumber = questionNumber + 1
    
        
       
        
        
        
    }
    
    mutating func checkAnswer(_ userAnswer: String) -> Bool{
        if userAnswer == quiz[questionNumber].answer{
            score+=1
            return true
        }else{
            return false
        }
    }
    
}
