//
//  ViewController.swift
//  footballQuiz
//
//  Created by Syimyk on 9/20/20.
//  Copyright © 2020 Syimyk. All rights reserved.
//

import UIKit
import KBRoundedButton

class MainViewController: UIViewController {
    
    
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var questionNumber: UILabel!
    
    
    var quizBrain = QuizBrain()
    
    @IBOutlet weak var firstButton: KBRoundedButton!
    @IBOutlet weak var secondButton: KBRoundedButton!
    @IBOutlet weak var thirdButton: KBRoundedButton!
    @IBOutlet weak var progess: UIProgressView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let black = UIColor(red: 0, green: 100, blue: 0, alpha: 1.0)
        firstButton.layer.borderColor = black.cgColor
        firstButton.layer.borderWidth = 2.0
        secondButton.layer.borderColor = black.cgColor
        secondButton.layer.borderWidth = 2.0
        thirdButton.layer.borderColor = black.cgColor
        thirdButton.layer.borderWidth = 2.0
        updateUI()
        
    }

 
    @IBAction func answerPressed(_ sender: KBRoundedButton) {
        var userAnswer = sender.currentTitle!
        let checkedAnswer = quizBrain.checkAnswer(userAnswer)
        if checkedAnswer{
            sender.backgroundColor = .green
        }else{
            sender.backgroundColor = .red
        }
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
    }
    

    @objc func updateUI(){
        questionLabel.text = quizBrain.getQuestionText()
        firstButton.setTitle(quizBrain.getChoiceOne(), for: .normal)
        secondButton.setTitle(quizBrain.getChoiceTwo(), for: .normal)
        thirdButton.setTitle(quizBrain.getChoiceThree(), for: .normal)
        scoreLabel.text = quizBrain.getScore()
        questionNumber.text = quizBrain.whichQuestion()
        firstButton.backgroundColor = .clear
        secondButton.backgroundColor = .clear
        thirdButton.backgroundColor = .clear
        progess.progress = quizBrain.getProgress()
        
    }
}

