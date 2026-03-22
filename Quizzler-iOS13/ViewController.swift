//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    var quizComplete: Bool = false
    
    let quiz = [
        Question(text: "Four + Two is equal to Six", correctAnswer: "True"),
        Question(text: "Five - Three is greater than One", correctAnswer: "True"),
        Question(text: "Three + Eight is less than Ten", correctAnswer: "False")
    ]
    
    var questionNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Lubie Placki!")
        updateUI()
    }
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let userAnser: String = sender.currentTitle!
        let question = quiz[questionNumber]
        
        if userAnser == question.correctAnswer{
            print("That's correct!")
        } else {
            print("Not quite.")
        }
        
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        }
            
            updateUI()
        
        if questionNumber == quiz.count - 1 {
                quizComplete = true
        }
            
        }
        
        func updateUI() {
            
            if quizComplete == false {
                questionLabel.text = quiz[questionNumber].text
            } else {
                questionLabel.text = "Quiz Complete!"
            }
        }
    }

