//
//  ViewController.swift
//  MultipleChoice
//
//  Created by Liu, Bojun on 2019-12-05.
//  Copyright © 2019 Liu, Nicole. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Mark: Properties
    // Connected labels and text views to controller using outlets
    @IBOutlet weak var questions: UITextField!
    @IBOutlet weak var studentInput: UITextField!
    @IBOutlet weak var teacherInput: UITextField!
    @IBOutlet weak var outputView: UITextView!
    var correctAnswers = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    // Mark: Methods
    
    // Created action for when check answers button is pressed
    @IBAction func checkAnswers(_ sender: Any) {
        // Clear the output view every time the button is clicked
        outputView.text = ""
        // Create a constant containing ABCDE (only valid input for second and third input field)
        let answers = "ABCDE"
        // Guard statement to check for a number in number of questions
        guard let questionsString = questions.text, let numberOfQuestions = Int(questionsString) else {
            outputView.text = "Error. Please enter an integer value greater than 0."
            return
        }
        
        // Guard statement to check if there is text and it matches number of questions in student answers
        guard let studentAnswers = studentInput.text, studentAnswers.count == numberOfQuestions else {
            outputView.text = "Error. Please be sure to enter exactly \(numberOfQuestions) answers."
            return
        }
        
        // Guard statement to check if there is text and it matches number of questions in teacher answers
        guard let teacherAnswers = teacherInput.text, teacherAnswers.count == numberOfQuestions else {
            outputView.text = "Error. Please be sure to enter exactly \(numberOfQuestions) answers."
            return
        }
        
        // For loop to find the position of every character in student answers string
        // if the character in the same position in the teacher answers is the same, correct answers value adds one
        for (position, character) in studentAnswers.enumerated() {
            let index = teacherAnswers.index(teacherAnswers.startIndex, offsetBy: position)
            if character == teacherAnswers[index] && answers.contains(character) {
                correctAnswers += 1
            }
            
        }
        // prints amount of correct answers to the view
        outputView.text = "The student got \(correctAnswers) questions right."
    }
    
    
    
    
    
    
    
}
