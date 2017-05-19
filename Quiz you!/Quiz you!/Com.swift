//
//  ComputingViewController.swift
//  Quiz you!
//
//  Created by RICHARD THANT WIN HTET on 16/05/2017.
//  Copyright © 2017 RICHARD THANT WIN HTET. All rights reserved.
//

import UIKit

class Com: UIViewController {
    
    @IBOutlet weak var QuestionLabel: UILabel!
    
    @IBOutlet weak var Button1: UIButton!
    @IBOutlet weak var Button2: UIButton!
    @IBOutlet weak var Button3: UIButton!
    @IBOutlet weak var Button4: UIButton!
    @IBOutlet weak var MainMenu: UIButton!
    
    @IBOutlet weak var History: UIButton!
    @IBOutlet weak var Next: UIButton!
    @IBOutlet weak var LabelEnd: UILabel!
    @IBOutlet weak var ScoreLabel: UILabel!
    @IBOutlet weak var Grade: UILabel!
    @IBOutlet weak var Name: UILabel!
    
    //out
    var end = 1
    var RandomNumber = arc4random() % 10
    var score = 0
    var CorrectAnswer = String()
    var subject = "Computing"
    
    public static var History1 = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        Name.text = ViewController.outputMessage
        RandomQuestions()
        Hide()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func Next(_ sender: Any) {
        
        RandomQuestions()
        Hide()
        UnHide2()
        
    }
    
    func RandomQuestions(){
        
        RandomNumber += 1
        if RandomNumber == 10
        {
            RandomNumber = 1
        }
        
        if RandomNumber == 6 || RandomNumber == 7 || RandomNumber == 4
        {
            Button1.backgroundColor = UIColor.white
            Button4.backgroundColor = UIColor.white
        }
        else
        {
            Button1.backgroundColor = UIColor(red: 88.0/255.0, green: 252.0/255.0, blue: 244.0/255.0, alpha: 1.0)
            Button4.backgroundColor = UIColor(red: 88.0/255.0, green: 252.0/255.0, blue: 244.0/255.0, alpha: 1.0)
        }
        
        
        switch(RandomNumber){
            
        case 1:
            QuestionLabel.text = "In computer, PDF stand for"
            Button1.setTitle("Portable Document Format", for: UIControlState.normal)
            Button2.setTitle("Pair Distribution Function", for: UIControlState.normal)
            Button3.setTitle("Personal Data Form", for: UIControlState.normal)
            Button4.setTitle("Probability Distribution Function ", for: UIControlState.normal)
            CorrectAnswer = "1"
            break
            
        case 2:
            QuestionLabel.text = "Which one is not a main function of structure query language?"
            Button1.setTitle("Data Definition", for: UIControlState.normal)
            Button2.setTitle("Data Manipulation", for: UIControlState.normal)
            Button3.setTitle("Data Inheritance", for: UIControlState.normal)
            Button4.setTitle("Data Extraction", for: UIControlState.normal)
            CorrectAnswer = "3"
            break
            
        case 3:
            QuestionLabel.text = "Which pair is the components of CPU?"
            Button1.setTitle("Arithmetic logic unitand Control unit", for: UIControlState.normal)
            Button2.setTitle("Control unit and Circuits", for: UIControlState.normal)
            Button3.setTitle("Usb port and slot", for: UIControlState.normal)
            Button4.setTitle("Display Card and RAM", for: UIControlState.normal)
            CorrectAnswer = "1"
            break
            
        case 4:
            QuestionLabel.text = "CPU is the main components of computer?"
            Button1.setTitle("", for: UIControlState.normal)
            self.Button1.backgroundColor = UIColor(red: 93, green: 188, blue: 210, alpha: 0)
            Button2.setTitle("True", for: UIControlState.normal)
            Button3.setTitle("False", for: UIControlState.normal)
            Button4.setTitle("", for: UIControlState.normal)
            self.Button4.backgroundColor = UIColor(red: 93, green: 188, blue: 210, alpha: 0)
            CorrectAnswer = "2"
            break
            
        case 5:
            QuestionLabel.text = "What is the header of a JPG file"
            Button1.setTitle("FF D2", for: UIControlState.normal)
            Button2.setTitle("FD D8", for: UIControlState.normal)
            Button3.setTitle("FF D8", for: UIControlState.normal)
            Button4.setTitle("FF 10", for: UIControlState.normal)
            CorrectAnswer = "3"
            break
            
        case 6:
            QuestionLabel.text = "RAM is a volatile storage?"
            Button1.setTitle("", for: UIControlState.normal)
            self.Button1.backgroundColor = UIColor(red: 93, green: 188, blue: 210, alpha: 0)
            Button2.setTitle("True", for: UIControlState.normal)
            Button3.setTitle("False", for: UIControlState.normal)
            Button4.setTitle("", for: UIControlState.normal)
            self.Button4.backgroundColor = UIColor(red: 93, green: 188, blue: 210, alpha: 0)
            CorrectAnswer = "2"
            break
            
        case 7:
            QuestionLabel.text = "Hard Disk is a volatile storage?"
            Button1.setTitle("", for: UIControlState.normal)
            self.Button1.backgroundColor = UIColor(red: 93, green: 188, blue: 210, alpha: 0)
            Button2.setTitle("True", for: UIControlState.normal)
            Button3.setTitle("False", for: UIControlState.normal)
            Button4.setTitle("", for: UIControlState.normal)
            self.Button4.backgroundColor = UIColor(red: 93, green: 188, blue: 210, alpha: 0)
            CorrectAnswer = "3"
            break
            
        case 8:
            QuestionLabel.text = "What does URL stand for"
            Button1.setTitle("uniform Resource Locator", for: UIControlState.normal)
            Button2.setTitle("Uniform Regustration Language", for: UIControlState.normal)
            Button3.setTitle("Uniform Resource Link", for: UIControlState.normal)
            Button4.setTitle("Uniform Registration list", for: UIControlState.normal)
            CorrectAnswer = "1"
            break
            
        case 9:
            QuestionLabel.text = "What does CMOS stand for?"
            Button1.setTitle("Content Metal Oxide Semiconductor", for: UIControlState.normal)
            Button2.setTitle("Complementary Metal Oxide Semicondouctor", for: UIControlState.normal)
            Button3.setTitle("Context Metal Oxygen Semiconductor", for: UIControlState.normal)
            Button4.setTitle("Compressed Metal Oxygen Semiconductor", for: UIControlState.normal)
            CorrectAnswer = "2"
            break
            
        case 10:
            QuestionLabel.text = "What is the first programming language in computer world?"
            Button1.setTitle("Java", for: UIControlState.normal)
            Button2.setTitle("C++", for: UIControlState.normal)
            Button3.setTitle("CS-4", for: UIControlState.normal)
            Button4.setTitle("Plankalkul", for: UIControlState.normal)
            CorrectAnswer = "4"
            break
            
        default:
            
            break
        }
        
    }
    
    func Hide(){
        LabelEnd.isHidden = true
        Next.isHidden = true
        MainMenu.isHidden = true
        Grade.isHidden = true
        History.isHidden = true
    }
    
    func Hide2(){
        Button1.isHidden = true
        Button2.isHidden = true
        Button3.isHidden = true
        Button4.isHidden = true
    }
    
    func UnHide(){
        LabelEnd.isHidden = false
        Next.isHidden = false
    }
    
    func UnHide2(){
        Button1.isHidden = false
        Button2.isHidden = false
        Button3.isHidden = false
        Button4.isHidden = false
    }
    
    func End(){
        if(end == 5){
            Hide()
            LabelEnd.isHidden = false
            Next.isHidden = true
            MainMenu.isHidden = false
            ScoreLabel.isHidden = true
            Grade.isHidden = false
            History.isHidden = false
            
            if(score == 1 || score == 0){
                Grade.text = "Bad!!"
                Grade.textColor = UIColor.red
                LabelEnd.textColor = UIColor.red
            }
            else if(score == 2 || score == 3){
                Grade.text = "Not Bad!!"
                Grade.textColor = UIColor.orange
                LabelEnd.textColor = UIColor.orange
                
            }
            else if(score == 4){
                Grade.text = "Great!!"
                Grade.textColor = UIColor.blue
                LabelEnd.textColor = UIColor.blue
            }
            else if(score == 5){
                Grade.text = "Excellent!!"
                Grade.textColor = UIColor.green
                LabelEnd.textColor = UIColor.green
            }
            
            QuestionLabel.text = "Quiz you!"
            LabelEnd.text = "\(score)/5"
            Maths.History1 += "\n"
            Maths.History1 += "\nSubject: \(subject)"
            Maths.History1 += "\nName: \(Name.text!)"
            Maths.History1 += "\nGrade: \(Grade.text!)"
            Maths.History1 += "\nScore: \(score)/5"
        }
    }

    @IBAction func Button1Action(_ sender: Any) {
        
        if(CorrectAnswer == "1"){
            
            LabelEnd.text = "You Are Correct!"
            LabelEnd.textColor = UIColor.green;
            score += 1
            ScoreLabel.text = "Score: \(score)"
        }
        else{
            LabelEnd.text = "You Are Wrong!"
            LabelEnd.textColor = UIColor.red;
        }
        
        UnHide()
        Hide2()
        End()
        end += 1
        
    }

    @IBAction func Button2Action(_ sender: Any) {
        
        if(CorrectAnswer == "2"){
            
            LabelEnd.text = "You Are Correct!"
            LabelEnd.textColor = UIColor.green;
            score += 1
            ScoreLabel.text = "Score: \(score)"
        }
        else{
            LabelEnd.text = "You Are Wrong!"
            LabelEnd.textColor = UIColor.red;
        }
        UnHide()
        Hide2()
        End()
        end += 1
    }
    
    @IBAction func Button3Action(_ sender: Any) {
        
        if(CorrectAnswer == "3"){
            
            LabelEnd.text = "You Are Correct!"
            LabelEnd.textColor = UIColor.green;
            score += 1
            ScoreLabel.text = "Score: \(score)"
        }
        else{
            LabelEnd.text = "You Are Wrong!"
            LabelEnd.textColor = UIColor.red;
        }
        UnHide()
        Hide2()
        End()
        end += 1
    }

    @IBAction func Button4Action(_ sender: Any) {
        
        if(CorrectAnswer == "4"){
            
            LabelEnd.text = "You Are Correct!"
            LabelEnd.textColor = UIColor.green;
            score += 1
            ScoreLabel.text = "Score: \(score)"
        }
        else{
            LabelEnd.text = "You Are Wrong!"
            LabelEnd.textColor = UIColor.red;
        }
        UnHide()
        Hide2()
        End()
        end += 1
    }
}
