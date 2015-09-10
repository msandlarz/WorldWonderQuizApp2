//
//  DifficultyViewController.swift
//  WorldWonderQuizApp2
//
//  Created by Melanie Sandlarz on 9/10/15.
//  Copyright (c) 2015 Melanie Sandlarz. All rights reserved.
//

import UIKit

class DifficultyViewController: UIViewController {

    var easyJson:JSON?
    
    var questionCount = 0
    var askingQuestions = false
    var questions = ["why is sky blue", "why is grass green"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(animated: Bool) {
        if askingQuestions {
            
            if questionCount < questions.count {
                self.goToNextQuestion()
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func goToNextQuestion() {
        let viewController:MultiViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewControllerWithIdentifier("viewMulti") as! MultiViewController
        
        viewController.question = questions[questionCount]
        questionCount = questionCount + 1
        self.presentViewController(viewController, animated: false, completion: nil)
        
    }
    
    @IBAction func easyPressed(sender: AnyObject) {
        self.askingQuestions = true
        self.questionCount = 0 
        self.goToNextQuestion()
    }

    @IBAction func mediumPressed(sender: AnyObject) {
        
    }
    
    @IBAction func difficultPressed(sender: AnyObject) {
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
