//
//  ViewController.swift
//  LoginPage
//
//  Created by dinesh danda on 04/04/16.
//  Copyright © 2016 dinesh danda. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var username : UITextField!
    var password :UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.cyan
        
        let label1 = UILabel()
        label1.frame = CGRect(x:20, y:100, width:90, height:30)
        label1.text = "Username:"
        //label1.backgroundColor = UIColor.yellowColor()
        self.view.addSubview(label1)
        
        
        let label2 = UILabel()
        label2.frame = CGRect(x:20, y:140, width:90, height:30)
        label2.text = "Password:"
       // label2.backgroundColor = UIColor.yellowColor()
        self.view.addSubview(label2)
        
        
         username = UITextField()
        username.frame = CGRect(x:110, y:100, width:200, height:30)
        username.borderStyle = .roundedRect
        username.placeholder = "Enter username"
        self.view.addSubview(username)
        
        
        password = UITextField()
        password.frame = CGRect(x:110, y:140, width:200, height:30)
        password.borderStyle = .roundedRect
        password.placeholder = "Enter password"
        password.isSecureTextEntry = true
        self.view.addSubview(password)
        
        let yValue = password.frame.origin.y + password.frame.size.height + 20
        
        let login = UIButton(type: UIButtonType.roundedRect)
        login.frame = CGRect(x:110, y:yValue, width:200, height:30)
        login.backgroundColor = UIColor.yellow
        login.setTitle("Login", for: UIControlState.normal)
        
        login.addTarget(self, action:#selector(ViewController.loginAction) , for: UIControlEvents.touchUpInside)
        
        self.view.addSubview(login)
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    func loginAction()
    {
        print("Button action called")
        
        if username.text == "" || password.text == ""
        {
            
            let alert = UIAlertController(title: "Emtpy Fields", message: "Enter uername and password", preferredStyle: UIAlertControllerStyle.alert)
            
            let okBtn = UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: { (action : UIAlertAction) -> Void in
                
                print("Ok btn clicked")
                
            })

            alert.addAction(okBtn)
            
            
            self.present(alert, animated: true, completion: { () -> Void in
                
                
            })
            
            
        }
       // else if username.text == "user" && password.text == "123"
        else if username.text == password.text

        {
            ///go next screen.
            
            let second = SecondViewController()
            
            self.navigationController?.pushViewController(second, animated: true)
            
        }
        else
        {
            let alert = UIAlertController(title: "Login Failed", message: "INvalid uername and password", preferredStyle: UIAlertControllerStyle.alert)
            
            let okBtn = UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: { (action : UIAlertAction) -> Void in
                
                print("Ok btn clicked")
                
            })
            
            alert.addAction(okBtn)
            
            
            self.present(alert, animated: true, completion: { () -> Void in
                
                
            })
 
        }
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

