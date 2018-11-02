//
//  AddZekrFirstPartViewController.swift
//  AlSebha
//
//  Created by Ahmed Elbasha on 10/30/18.
//  Copyright © 2018 Ahmed Elbasha. All rights reserved.
//

import UIKit

class AddZekrFirstPartViewController: UIViewController {

    @IBOutlet weak var languageButton: UIButton!
    @IBOutlet weak var zekrNameTextView: UITextView!
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var addZekrLabel: UILabel!
    @IBOutlet weak var nextButtonBottomConstraint: NSLayoutConstraint!
    
    var isArabic = false
    var zekrName: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setDelegateForUIControls()
        
        languageButton.titleLabel?.font = UIFont(name: "Avenir Next Regular", size: 17)
        
        nextButton.bindToKeyboard()
        nextButton.deattachFromKeyboard()
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    func setDelegateForUIControls() {
        zekrNameTextView.delegate = self
    }

    @IBAction func languageButtonPressed(_ sender: Any) {
        let currentLanguageButton = languageButton.currentTitle
        
        if currentLanguageButton == "عربي" && isArabic == false {
            // Set localization for addZekrLabel
            addZekrLabel.text = "آضافة ذكر"
            
            // Set localization for languageButton
            languageButton.setTitle("English", for: .normal)
            languageButton.setTitle("English", for: .highlighted)
            languageButton.titleLabel?.font = UIFont(name: "Avenir Next Regular", size: 15)
            
            // Set localization for nextButton
            nextButton.setTitle("التالي", for: .normal)
            nextButton.setTitle("التالي", for: .highlighted)
            
            // Set localization for zekrNameTextView
            if zekrNameTextView.text == "Please enter the desired zekr." {
                zekrNameTextView.text = "من فضلك قم بكتابة الذكر الذي تريد اضافته"
                zekrNameTextView.textAlignment = .right
            } else {
                zekrNameTextView.textAlignment = .right
            }
            
            // Change isArabic value.
            isArabic = true
        } else if currentLanguageButton == "English" && isArabic == true {
            // Set localization for addZekrLabel
            addZekrLabel.text = "Add Zekr"
            
            // Set localization for languageButton
            languageButton.setTitle("عربي", for: .normal)
            languageButton.setTitle("عربي", for: .highlighted)
            languageButton.titleLabel?.font = UIFont(name: "Avenir Next Regular", size: 17)
            
            // Set localization for nextButton
            nextButton.setTitle("NEXT", for: .normal)
            nextButton.setTitle("NEXT", for: .highlighted)
            
            // Set localization for zekrNameTextView
            if zekrNameTextView.text == "من فضلك قم بكتابة الذكر الذي تريد اضافته" {
                zekrNameTextView.text = "Please enter the desired zekr."
                zekrNameTextView.textAlignment = .left
            } else {
                zekrNameTextView.textAlignment = .left
            }
            
            // Change isArabic value
            isArabic = false
        }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        zekrNameTextView.resignFirstResponder()
        nextButtonBottomConstraint.constant = 0.0
    }
    
    @IBAction func returnButtonPressed(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func nextButtonPressed(_ sender: Any) {
        if zekrName != "" {
            let addZekrSecondPartVC = storyboard?.instantiateViewController(withIdentifier: "AddZekrSecondPart") as! AddZekrSecondPartViewController
            addZekrSecondPartVC.initWithData(zekrName: zekrName)
            self.present(addZekrSecondPartVC, animated: true, completion: nil)
        } else {
            var errorMessageTitle = ""
            var errorMessage = ""
            var defaultActionTitle = ""
            
            if isArabic == false {
                errorMessageTitle = "Error"
                errorMessage = "Please enter a valid name for the zekr."
                defaultActionTitle = "OK"
            } else {
                errorMessageTitle = "خطآ"
                errorMessage = "من فضلك ادخل اسم صحيح للذكر."
                defaultActionTitle = "حسنآ"
            }
            
            let alertController = UIAlertController(title: errorMessageTitle, message: errorMessage, preferredStyle: .alert)
            
            let defaultAction = UIAlertAction(title: defaultActionTitle, style: .default) { (alertAction) in
                return
            }
            
            alertController.addAction(defaultAction)
            
            self.present(alertController, animated: true, completion: nil)
        }
    }
}
