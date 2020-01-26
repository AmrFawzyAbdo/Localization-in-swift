//
//  ViewController.swift
//  Localization-In-Swift
//
//  Created by Apple on 1/26/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit
import MOLH

class ViewController: UIViewController {
    @IBOutlet weak var countryName: UILabel!
    @IBOutlet weak var textFi: UITextField!
    @IBOutlet weak var changeableText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        changeableText.text = "changeableText".localize
        
        if MOLHLanguage.isRTLLanguage(){
            self.textFi.textAlignment = NSTextAlignment.right
        }else{
            textFi.textAlignment = NSTextAlignment.left
        }
        
    }
    
    
    @IBAction func changeLanguage(_ sender: Any) {
        MOLH.setLanguageTo(MOLHLanguage.currentAppleLanguage() == "en" ? "ar" : "en")
        MOLH.reset()
    }
    
}

