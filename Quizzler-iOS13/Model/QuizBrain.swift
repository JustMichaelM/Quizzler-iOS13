//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by Michał on 24/03/2026.
//  Copyright © 2026 The App Brewery. All rights reserved.
//

import Foundation

struct QuizBrain {
    private let quiz: [Question] = [
        Question(text: "Four + Two is equal to Six", correctAnswer: "True"),
        Question(text: "Five - Three is greater than One", correctAnswer: "True"),
        Question(text: "Three + Eight is less than Ten", correctAnswer: "False")
    ]
    
    private var questionNumber: Int = 0
    private(set) var score: Int = 0
    
    mutating func checkAnswer(_ answer: String) -> Bool {
        let isCorrect: Bool = answer == quiz[questionNumber].correctAnswer
        
        if isCorrect {
            score += 1
        }
        
        questionNumber += 1
        return isCorrect
    }
    
    func isQuizComplete() -> Bool {
        if questionNumber >= quiz.count {
            return true
        }
        return false
    }
    
    var getNextQuestion: String {
        // Computed Property
        // Zamiast typowego gettera i settera
        quiz[questionNumber].text
    }
    
    func progressBarUpdate() -> Float {
        return 1.0 / Float(quiz.count)
    }
}
