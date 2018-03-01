//
//  ViewController.swift
//  Quizzler
//
//  Created by Angela Yu on 25/08/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Place your instance variables here
    
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


    @IBAction func answerPressed(_ sender: AnyObject) {
  
    }
    
    // This method will update all the views on screen (progress bar, score label, etc)
    func updateUI() {
      
    }
    
    // This method will update the question text and check if we reached the end
    func nextQuestion() {
        
    }
    
    // This method will check if the user has got the right answer.
    func checkAnswer() {
        
    }
    
    // This method will wipe the board clean, so that users can retake the quiz
    func startOver() {
       
    }
    

    
}
