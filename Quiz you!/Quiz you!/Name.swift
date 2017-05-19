//
//  NameViewController.swift
//  Quiz you!
//
//  Created by RICHARD THANT WIN HTET on 15/05/2017.
//  Copyright © 2017 RICHARD THANT WIN HTET. All rights reserved.
//

import UIKit
//in
class Name: UIViewController {
    
    
    @IBOutlet var Name: UITextField!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        ViewController.outputMessage = Name.text!
        Alert()
    }
    
    func Alert(){
        if(ViewController.outputMessage == ""){
            let alertController = UIAlertController(title: "Error!",
                                                    message: "Name cannot be blank.",
                                                    preferredStyle: .alert)
            let yesAction = UIAlertAction(title: "Continue",
                                          style: .default)
            
            alertController.addAction(yesAction)
            self.present(alertController,animated: true, completion: nil)
        }
    }
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
