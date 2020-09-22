//
//  QuizBrain.swift
//  footballQuiz
//
//  Created by Syimyk on 9/21/20.
//  Copyright © 2020 Syimyk. All rights reserved.
//

import Foundation

struct QuizBrain {
    
    var numQuestion = 0
    var trackingQuestions = 1
    var score = 0
    
    let questionsList = [Quiz(question: "Which club has won the most Champions League titles?", choiceOne: "Barcelona FC", choiceTwo: "Manchester United FC", choiceThree: "Real Madrid FC", actualAnswer: "Real Madrid FC"),
                         Quiz(question: "Who is the only player to win the Champions League with three different clubs?", choiceOne: "Cristiano Ronaldo", choiceTwo: "Clarence Seedorf", choiceThree: "Andrea Pirlo", actualAnswer: "Clarence Seedorf"),
                         Quiz(question: "Three people have won the Champions League a record three times as manager. Who are they?", choiceOne: "Simeone,Inzaghi,Guardiola", choiceTwo: "Jose,Klopp,Flick", choiceThree: "Paisley,Ancelotti,Zidane", actualAnswer: "Paisley,Ancelotti,Zidane"),
                         Quiz(question: "In which season was the European Cup rebranded as the Champions League?", choiceOne: "1991-92", choiceTwo: "1978-79", choiceThree: "1992-93", actualAnswer: "1992-93"),
                         Quiz(question: "Which team was the first from the UK to win the European Cup?", choiceOne: "Arsenal FC", choiceTwo: "Liverpool FC", choiceThree: "Celtic", actualAnswer: "Celtic"),
                         Quiz(question: "The Champions League has been won only once by a team from Romania. Can you name them?", choiceOne: "Romania FC", choiceTwo: "Steaua Bucharest", choiceThree: "Bucharest FC", actualAnswer: "Steaua Bucharest"),
                         Quiz(question: "Liverpool have won six Champions Leagues and Manchester United have won three, but who are England's third most successful team in the competition with two titles?", choiceOne: "Chelsea FC", choiceTwo: "West Ham FC", choiceThree: "Nottingham Forest", actualAnswer: "Nottingham Forest"),
                         Quiz(question: "Who is the Champions League's top goalscorer of all time?", choiceOne: "Cristiano Ronaldo", choiceTwo: "Lionel Messi", choiceThree: "Robert Lewandowski", actualAnswer: "Cristiano Ronaldo"),
                         Quiz(question: "Which player holds the record for most Champions League winners' medals?", choiceOne: "Lionel Messi", choiceTwo: "Gerd Muller", choiceThree: "Francisco Gento", actualAnswer: "Francisco Gento"),
                         Quiz(question: "Which outfield player appeared in the Champions League final in three different decades?", choiceOne: "Arjen Robben", choiceTwo: "Ryan Giggs", choiceThree: "Andres Iniesta", actualAnswer: "Ryan Giggs")]
    
    
    mutating func checkAnswer(_ userAnswer : String) -> Bool{
        if userAnswer == questionsList[numQuestion].actualAnswer{
            score += 1
            numQuestion += 1
            trackingQuestions += 1
            return true
        }else{
            numQuestion += 1
            trackingQuestions += 1
            return false
        }
    }
    
    
    mutating func getQuestionText() -> String{
        if numQuestion == questionsList.count{
            trackingQuestions = 1
            numQuestion = 0
            score = 0
            return questionsList[numQuestion].question
        }else{
            return questionsList[numQuestion].question
        }
       
    }
    
    func getChoiceOne() -> String{
        return questionsList[numQuestion].choiceOne
    }
    
    func getChoiceTwo() -> String{
        return questionsList[numQuestion].choiceTwo
    }
    
    func getChoiceThree() -> String{
        return questionsList[numQuestion].choiceThree
    }
    
    func getScore() -> String{
        return "score:\(score)"
    }
    
    func whichQuestion() -> String{
        return "Question:\(trackingQuestions)"
    }
    
    func getProgress() -> Float{
        return Float(numQuestion + 1) / Float(questionsList.count)
    }
}
