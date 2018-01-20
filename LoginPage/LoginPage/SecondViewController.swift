//
//  SecondViewController.swift
//  LoginPage
//
//  Created by dinesh danda on 05/04/16.
//  Copyright © 2016 dinesh danda. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBAction func nextAction(sender: UIButton) {
        
        let third = ThirdViewController()
        self.navigationController?.pushViewController(third, animated: true)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "Second View"
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
