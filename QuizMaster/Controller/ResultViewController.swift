//
//  ResultViewController.swift
//  QuizMaster
//
//  Created by Rasim Burak Kaya on 5.03.2024.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var scoreLabel: UILabel!
    
    var score: Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        
        
        scoreLabel.text = "\(score ?? 0)/\(10)"
    }
    
    
 
   

}
