//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Michał on 22/03/2026.
//  Copyright © 2026 The App Brewery. All rights reserved.
//

import Foundation

struct Question {
    let text: String
    let correctAnswer: String
    
    init(text: String, correctAnswer: String) {
        self.text = text
        self.correctAnswer = correctAnswer
    }
}
