//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by Michał on 24/03/2026.
//  Copyright © 2026 The App Brewery. All rights reserved.
//

import Foundation

struct QuizBrain {
    let quiz = [
        Question(text: "Four + Two is equal to Six", correctAnswer: "True"),
        Question(text: "Five - Three is greater than One", correctAnswer: "True"),
        Question(text: "Three + Eight is less than Ten", correctAnswer: "False")
    ]
    
    var quizComplete: Bool = false
    var questionNumber: Int = 0
    var score: Int = 0
    
    func checkAnswer(_ answer: String) -> Bool {
        if answer == quiz[questionNumber].correctAnswer {
            return true
        } else {
            return false
        }
    }
    
    mutating func nextQuestion() {
        questionNumber += 1
        
        if questionNumber == quiz.count {
            quizComplete = true
        }
    }
    
    func getScore() -> Int {
        return score
    }
    
    mutating func addScore() {
        score += 1
    }
    
    func getQuestionText() -> String {
        return quiz[questionNumber].text
    }
    
    func getQuestionNumber() -> Int {
        return questionNumber
    }
    
    func getQuestionCount() -> Int {
        return quiz.count
    }
    
    func progressBarUpdate() -> Float {
        return 1.0 / Float(quiz.count)
    }
}
