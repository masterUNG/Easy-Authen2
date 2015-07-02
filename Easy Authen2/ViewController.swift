//
//  ViewController.swift
//  Easy Authen2
//
//  Created by MacPro on 6/1/2558 BE.
//  Copyright (c) 2558 EWTC Institute. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var userTextField: UITextField!
    
    
    @IBOutlet weak var passwordTexrField: UITextField!
    
    
    
    @IBAction func loginButton(sender: AnyObject) {
        
        //Get Value From TextField
        var strUser:String = userTextField.text
        var srtPass:String = passwordTexrField.text
        
        checkSpace(strUser, argPass: srtPass)
        
        
    }   // loginButton
    
    func checkSpace(argUser:String, argPass:String)->Void{
    
        //Test
        println("User = \(argUser)")
        println("Password = \(argPass)")
        
        if ((argUser.isEmpty) || (argPass.isEmpty)) {
            myAlert()
        }
        else {
            checkUserPass(argUser, Password: argPass)
        }
        
        
    } //checkSpace
    
    func myAlert()->Void{
    
        let myDialog = UIAlertController(title: "Have Space", message: "Please Fill every Blank", preferredStyle: UIAlertControllerStyle.Alert)
        myDialog.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
        
        self.presentViewController(myDialog, animated: true, completion: nil)
        
    }
    
    func checkUserPass(User:String, Password:String)->Void{
    
        if ((User == "master") && (Password == "12345")) {
            moveToMaster()
        }
        else {
            myAlert2()
        }
        
    } //checkUser
    
    func moveToMaster()->Void{
    
        let Master = self.storyboard?.instantiateViewControllerWithIdentifier("master") as! masterViewController
        self.navigationController?.pushViewController(Master, animated: true)
    
    }
    
    func myAlert2()->Void{
        
        let myDialog = UIAlertController(title: "Login False", message: "Please Try Again", preferredStyle: UIAlertControllerStyle.Alert)
        myDialog.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
        
        self.presentViewController(myDialog, animated: true, completion: nil)
        
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}   // Main Class


