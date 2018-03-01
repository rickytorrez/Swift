//
//  Question.swift
//  Quizzler
//
//  Created by Ricky Torrez on 3/1/18.
//  Copyright © 2018 London App Brewery. All rights reserved.
//

import Foundation

class Question {
    // Blue print, every question should have a question text and a boolean answer
    let questionText : String
    let answer: Bool
    
    // Initialization code
    init( text: String, correctAnswer: Bool ){
        questionText = text
        answer = correctAnswer
    }
}

