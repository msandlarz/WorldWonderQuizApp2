//
//  MultiViewController.swift
//  WorldWonderQuizApp2
//
//  Created by Melanie Sandlarz on 9/10/15.
//  Copyright (c) 2015 Melanie Sandlarz. All rights reserved.
//

import UIKit

class MultiViewController: UIViewController {

    @IBOutlet weak var mainLabel: UILabel!
    
    var question:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        if let question_ = self.question {
            self.mainLabel.text = question_
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func buttonFour(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
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
