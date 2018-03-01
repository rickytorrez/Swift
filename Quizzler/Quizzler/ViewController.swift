//
//  ViewController.swift
//  Quizzler
//
//  Created by Angela Yu on 25/08/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let allQuestions = QuestionBank()
    var pickedAnswer : Bool = false
    var questionNumber: Int = 0
    var score : Int = 0
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let firstQuestion = allQuestions.list[0]
//        questionLabel.text = firstQuestion.questionText

        nextQuestion()
        
    }


    @IBAction func answerPressed(_ sender: AnyObject) {
        if sender.tag == 1 {
            pickedAnswer = true
        }
        else if sender.tag == 2 {
            pickedAnswer = false
        }
        checkAnswer()
        
        questionNumber = questionNumber + 1
        
        nextQuestion()
    }
    
    // This method will update all the views on screen (progress bar, score label, etc)
    func updateUI() {
        
        scoreLabel.text = "Score: \(score)"
        
        progressLabel.text = "\(questionNumber + 1) / 13"
        
        progressBar.frame.size.width = (view.frame.size.width / 13) * CGFloat(questionNumber + 1)
        
    }
    
    // This method will update the question text and check if we reached the end
    func nextQuestion() {
     
        if questionNumber <= 12 {
            
            questionLabel.text = allQuestions.list[questionNumber].questionText
            
            updateUI()
        
        }
        else {
            
            let alert = UIAlertController(title: "Awesome", message: "You've finished all the questions. Would you like to start over?", preferredStyle: .alert)
            
            let restartAction = UIAlertAction(title: "Restart", style: .default, handler: { (UIAlertAction) in
                self.startOver()
            })
            
            alert.addAction(restartAction)
            
            present(alert, animated: true, completion: nil)
        }
    }
    
    // This method will check if the user has got the right answer.
    func checkAnswer() {
        
        let correctAnswer = allQuestions.list[questionNumber].answer
        
        if correctAnswer == pickedAnswer {
            
            ProgressHUD.showSuccess("Correct")
            
            score = score + 1
        } else {
            ProgressHUD.showError("Wrong!")
        }
    
    }
    
    // This method will wipe the board clean, so that users can retake the quiz
    func startOver() {
       
       score = 0
       questionNumber = 0
       nextQuestion()
        
    }
    

    
}
