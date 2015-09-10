//
//  ViewController.swift
//  WorldWonderQuiz
//
//  Created by Melanie Sandlarz on 9/4/15.
//  Copyright (c) 2015 Melanie Sandlarz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        DataManager.getWorldWonderQuizDataFromFileWithSuccess() { (data) -> Void in
//            let json = JSON(data: data)
//            println("\(json)")
//            /*
//            if let appName = json["feed"]["entry"][0]["im:name"]["label"].string {
//                println("SwiftyJSON: \(appName)")
//            }*/
//        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    
    }


    @IBOutlet weak var EasyButton: UIButton!
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var DestViewController : ViewTwo? = segue.destinationViewController as? ViewTwo
        
        DestViewController?.LabelQuestion = "Easy Question"
        var LabelQuestion = "easy"
        println(LabelQuestion)
    }
    
    @IBAction func MediumClick(sender: AnyObject) {
        var level = "medium"
        println(level)
    }
    
    @IBAction func DifficultClick(sender: AnyObject) {
        var level = "hard"
        println(level)
    }

}

