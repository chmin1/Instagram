//
//  SignUpViewController.swift
//  instagram
//
//  Created by Chavane Minto on 6/27/17.
//  Copyright © 2017 Chavane Minto. All rights reserved.
//

import UIKit
import Parse

class SignUpViewController: UIViewController {

    @IBOutlet weak var usernameLabel: UITextField!
    
    @IBOutlet weak var emailLabel: UITextField!
    
    @IBOutlet weak var passwordLabel: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onScreenTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func onSignUp(_ sender: Any) {
        //new user object created using Parse
        let newUser = PFUser()
        
        //Set user Properties and assign values using text inputs
        newUser.username = usernameLabel.text
        newUser.email = emailLabel.text
        newUser.password = passwordLabel.text
        
        // call sign up function on the object
        
        
        newUser.signUpInBackground { (success: Bool, error: Error?) in
            if let error = error{
                print("User sign up failed: \(error.localizedDescription)")
            } else {
                print("User signed up successfully")
                self.dismiss(animated: true, completion: nil)
            }
        }
    }
    
    @IBAction func onDismiss(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
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
