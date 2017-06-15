//
//  ViewController.swift
//  Data Storing Permanently
//
//  Created by Student12 on 6/15/2560 BE.
//  Copyright © 2560 SNRU. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Implicit
    var strPhone = ""
    
    
    @IBOutlet weak var showPhoneLabel: UILabel!
    
    
    @IBOutlet weak var PhoneTextField: UITextField!
    
    
    
    @IBAction func saveButton(_ sender: Any) {
        
    // Get Value From TextField
        strPhone = PhoneTextField.text!
        print("strPhone ==> \(strPhone)")
    
    // Save to Permanently
        UserDefaults.standard.set(strPhone, forKey: "Phone")
        
    }
    
    
    
    
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let strPermanentPhone = UserDefaults.standard.object(forKey: "Phone")
        if let mypermanent = strPermanentPhone as? String {
            print("Result from Permanent ==> \(mypermanent)")
            showPhoneLabel.text = mypermanent
            

        }
        
        
        
        
        
   //     print("strPermanentPhone ==> \(strPermanentPhone!)")
        
        
        
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

