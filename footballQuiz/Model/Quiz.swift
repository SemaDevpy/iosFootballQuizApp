//
//  Quiz.swift
//  footballQuiz
//
//  Created by Syimyk on 9/21/20.
//  Copyright © 2020 Syimyk. All rights reserved.
//

import Foundation


struct Quiz {
    var question : String
    var choiceOne : String
    var choiceTwo : String
    var choiceThree : String
    var actualAnswer : String
    
    init(question : String, choiceOne : String, choiceTwo : String, choiceThree : String, actualAnswer : String) {
        self.question = question
        self.choiceOne = choiceOne
        self.choiceTwo = choiceTwo
        self.choiceThree = choiceThree
        self.actualAnswer = actualAnswer
    }
}
