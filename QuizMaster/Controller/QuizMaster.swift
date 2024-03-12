//
//  QuizMaster.swift
//  QuizMaster
//
//  Created by Rasim Burak Kaya on 3.03.2024.
//

import UIKit

class QuizMaster: UIViewController {

    @IBOutlet weak var questionBarLabel: UILabel!
    
    @IBOutlet weak var questionTextLabel: UILabel!

    @IBOutlet weak var choice1Button: UIButton!
    
    @IBOutlet weak var choice2Button: UIButton!
    
    @IBOutlet weak var choice3Button: UIButton!
    
    @IBOutlet weak var choice4Button: UIButton!
    
    @IBOutlet weak var viewScoreButton: UIButton!
    
    
    var quizBrain = QuizBrain()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.hidesBackButton = true
        
        choice1Button.layer.cornerRadius = 20
        choice2Button.layer.cornerRadius = 20
        choice3Button.layer.cornerRadius = 20
        choice4Button.layer.cornerRadius = 20
        
        viewScoreButton.isHidden = true
        
        updateUI()
    }
    
        
    
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle!
        
        if quizBrain.checkAnswer(userAnswer){
            sender.backgroundColor = UIColor.green
        }else{
            sender.backgroundColor = UIColor.red
    
        }
        
        isFinished()
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
        
    }
    
    
   @objc func updateUI(){
        let questionNo = quizBrain.getQuestionNumber() + 1
        questionBarLabel.text = "Question:\(questionNo)/10"
        
        questionTextLabel.text = quizBrain.getQuestionText()
        choice1Button.setTitle(quizBrain.getChoice1(), for: .normal)
        choice2Button.setTitle(quizBrain.getChoice2(), for: .normal)
        choice3Button.setTitle(quizBrain.getChoice3(), for: .normal)
        choice4Button.setTitle(quizBrain.getChoice4(), for: .normal)
        
        choice1Button.backgroundColor = UIColor.clear
        choice2Button.backgroundColor = UIColor.clear
        choice3Button.backgroundColor = UIColor.clear
        choice4Button.backgroundColor = UIColor.clear
        
        
    }
    
   func isFinished(){
        if quizBrain.questionNumber < quizBrain.quiz.count - 1{
            quizBrain.getNextQuestion()
        }else{
            
            performSegue(withIdentifier: "goToResult", sender: self)
            
            
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! ResultViewController
        
        destinationVC.score = quizBrain.score
    }

    

    

}
