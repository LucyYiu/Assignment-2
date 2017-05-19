//
//  history.swift
//  Quiz you!
//
//  Created by RICHARD THANT WIN HTET on 19/05/2017.
//  Copyright © 2017 RICHARD THANT WIN HTET. All rights reserved.
//

import UIKit

class history: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        History.text = Maths.History1

        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var History: UITextView!
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
