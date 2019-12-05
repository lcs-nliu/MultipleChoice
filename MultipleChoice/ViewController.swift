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
    
    // Mark: Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    // Created action for when check answers button is pressed
    @IBAction func checkAnswers(_ sender: Any) {
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
        
        

        }
        
        
        
    }



