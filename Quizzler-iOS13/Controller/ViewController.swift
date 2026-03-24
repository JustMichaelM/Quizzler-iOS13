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
    @IBOutlet weak var scoreLabel: UILabel!
    
    var quizBrain = QuizBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Lubie Placki!")
        progressBar.progress = 0.0
        scoreLabel.text = "Score: \(quizBrain.getScore())"
        updateUI()
    }
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let userAnswer: String = sender.currentTitle!
        let userGotIt: Bool = quizBrain.checkAnswer(userAnswer)
        
        let question = quizBrain.getQuestionText()
        
        if userGotIt{
            sender.backgroundColor = UIColor.green
        } else {
            sender.backgroundColor = UIColor.red
        }
        
        if quizBrain.getQuestionNumber() + 1 < quizBrain.getQuestionCount() {
            questionNumber += 1
            
        }
            
        updateUI()
        updateProgressBar()
        
        if questionNumber == quiz.count - 1 {
                quizComplete = true
        }
    }
        
    func updateUI() {
        
        if quizBrain.quizComplete == false {
            questionLabel.text = quizBrain.getQuestionText()
        } else {
            questionLabel.text = "Quiz Complete!"
        }
        
        UIView.animate(withDuration: 0.8) {
            self.trueButton.backgroundColor = UIColor.clear
            self.falseButton.backgroundColor = UIColor.clear
            }
        }
    
    func updateProgressBar() {
        progressBar.progress += 1 / Float(quizBrain.quiz.count)
        }
    }

