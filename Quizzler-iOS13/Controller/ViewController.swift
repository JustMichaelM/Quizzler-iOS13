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
        scoreLabel.text = "Score: \(quizBrain.score)"
        questionLabel.text = quizBrain.getQuestionText()
    }
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let userAnswer: String = sender.currentTitle!
        let userGotIt: Bool = quizBrain.checkAnswer(userAnswer)
        
        if userGotIt{
            sender.backgroundColor = UIColor.green
        } else {
            sender.backgroundColor = UIColor.red
        }
        
        updateUI()
        
    }
    
    func updateUI() {
        
        UIView.animate(withDuration: 0.8) {
            self.trueButton.backgroundColor = UIColor.clear
            self.falseButton.backgroundColor = UIColor.clear
        }
        
        progressBar.progress += quizBrain.progressBarUpdate()
        
        if quizBrain.isQuizComplete() {
            endQuiz()
            return
        }
        
        questionLabel.text = self.quizBrain.getQuestionText()
        scoreLabel.text = "Score: \(quizBrain.score)"
    }
    
    func endQuiz() {
        scoreLabel.alpha = 0.0
        questionLabel.text = "Quiz Complete! Your Score: \(quizBrain.score)"
        trueButton.isEnabled = false
        falseButton.isEnabled = false
    }
}

