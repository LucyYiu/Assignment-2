//
//  ViewController.swift
//  Quiz you!
//
//  Created by RICHARD THANT WIN HTET on 14/05/2017.
//  Copyright © 2017 RICHARD THANT WIN HTET. All rights reserved.
//

import UIKit

class Maths: UIViewController {
    
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
    
    var subject = "Mathematic"
    
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
            QuestionLabel.text = "There are 2 spiders,3 dogs and 2 humans. How many legs they have?"
            Button1.setTitle("7", for: UIControlState.normal)
            Button2.setTitle("24", for: UIControlState.normal)
            Button3.setTitle("10", for: UIControlState.normal)
            Button4.setTitle("32", for: UIControlState.normal)
            CorrectAnswer = "4"
            break
            
        case 2:
            QuestionLabel.text = "5! = ?"
            Button1.setTitle("120", for: UIControlState.normal)
            Button2.setTitle("20", for: UIControlState.normal)
            Button3.setTitle("5", for: UIControlState.normal)
            Button4.setTitle("35", for: UIControlState.normal)
            CorrectAnswer = "1"
            break
            
        case 3:
            QuestionLabel.text = "2 + 3 * 4 = ?"
            Button1.setTitle("20", for: UIControlState.normal)
            Button2.setTitle("10", for: UIControlState.normal)
            Button3.setTitle("9", for: UIControlState.normal)
            Button4.setTitle("14", for: UIControlState.normal)
            CorrectAnswer = "4"
            break
            
        case 4:
            QuestionLabel.text = "Is zero is a real number?"
            Button1.setTitle("", for: UIControlState.normal)
            self.Button1.backgroundColor = UIColor(red: 93, green: 188, blue: 210, alpha: 0)    //R: 93 G: 188 B: 210
            Button2.setTitle("Yes!", for: UIControlState.normal)
            Button3.setTitle("No!", for: UIControlState.normal)
            Button4.setTitle("", for: UIControlState.normal)
            self.Button4.backgroundColor = UIColor(red: 93, green: 188, blue: 210, alpha: 0)
            CorrectAnswer = "2"
            break
            
        case 5:
            QuestionLabel.text = "What is the formula of Pythagorean?"
            Button1.setTitle("a^2 + b^2 = c^2", for: UIControlState.normal)
            Button2.setTitle("a^2 - b^2 = c^2", for: UIControlState.normal)
            Button3.setTitle("a^2 = c^2", for: UIControlState.normal)
            Button4.setTitle("2a^2 = c^2", for: UIControlState.normal)
            CorrectAnswer = "1"
            break
            
        case 6:
            QuestionLabel.text = "Is 3/2 a integer?"
            Button1.setTitle("", for: UIControlState.normal)
            self.Button1.backgroundColor = UIColor(red: 93, green: 188, blue: 210, alpha: 0)
            Button2.setTitle("Yes!", for: UIControlState.normal)
            Button3.setTitle("No!", for: UIControlState.normal)
            Button4.setTitle("", for: UIControlState.normal)
            self.Button4.backgroundColor = UIColor(red: 93, green: 188, blue: 210, alpha: 0)
            CorrectAnswer = "2"
            break
            
        case 7:
            QuestionLabel.text = "Is 2+3i a natural number?"
            Button1.setTitle("", for: UIControlState.normal)
            self.Button1.backgroundColor = UIColor(red: 93, green: 188, blue: 210, alpha: 0)
            Button2.setTitle("Yes!", for: UIControlState.normal)
            Button3.setTitle("No!", for: UIControlState.normal)
            Button4.setTitle("", for: UIControlState.normal)
            self.Button4.backgroundColor = UIColor(red: 93, green: 188, blue: 210, alpha: 0)
            CorrectAnswer = "2"
            break
            
        case 8:
            QuestionLabel.text = "Which one is not a Mathematician?"
            Button1.setTitle("Galileo Galilei", for: UIControlState.normal)
            Button2.setTitle("Pythagoras", for: UIControlState.normal)
            Button3.setTitle("Euclid", for: UIControlState.normal)
            Button4.setTitle("Hamlet", for: UIControlState.normal)
            CorrectAnswer = "4"
            break
            
        case 9:
            QuestionLabel.text = "What is the probability that get a face up six in one dice?"
            Button1.setTitle("1/3", for: UIControlState.normal)
            Button2.setTitle("1/2", for: UIControlState.normal)
            Button3.setTitle("1/6", for: UIControlState.normal)
            Button4.setTitle("1/10", for: UIControlState.normal)
            CorrectAnswer = "3"
            break
            
        case 10:
            QuestionLabel.text = "79 + 31 = ?"
            Button1.setTitle("100", for: UIControlState.normal)
            Button2.setTitle("110", for: UIControlState.normal)
            Button3.setTitle("99", for: UIControlState.normal)
            Button4.setTitle("90", for: UIControlState.normal)
            CorrectAnswer = "2"
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

