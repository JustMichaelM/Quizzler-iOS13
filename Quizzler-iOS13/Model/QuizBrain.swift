//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by Michał on 24/03/2026.
//  Copyright © 2026 The App Brewery. All rights reserved.
//

import Foundation

struct QuizBrain {
    let quiz: [Question] = [
        Question(text: "Four + Two is equal to Six", correctAnswer: "True"),
        Question(text: "Five - Three is greater than One", correctAnswer: "True"),
        Question(text: "Three + Eight is less than Ten", correctAnswer: "False")
    ]
    
    var questionNumber: Int = 0
    var score: Int = 0
    
    mutating func checkAnswer(_ answer: String) -> Bool {
        
        if answer == quiz[questionNumber].correctAnswer {
            score += 1
            questionNumber += 1
            return true
        } else {
            questionNumber += 1
            return false
        }
    }
    
    mutating func isQuizComplete() -> Bool {
        if questionNumber >= quiz.count {
            return true
        }
        return false
    }
    
    func getQuestionText() -> String {
        return quiz[questionNumber].text
    }
    
    func progressBarUpdate() -> Float {
        return 1.0 / Float(quiz.count)
    }
}
