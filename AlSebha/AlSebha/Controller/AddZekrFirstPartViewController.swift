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
    
    var isArabic = false
    var zekrName: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setDelegateForUIControls()
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
            
            // Set localization for nextButton
            nextButton.setTitle("التالي", for: .normal)
            nextButton.setTitle("التالي", for: .highlighted)
            
            // Set localization for zekrNameTextView
            if zekrNameTextView.text == "Please enter the desired zekr." {
                zekrNameTextView.text = "من فضلك قم بكتابة الذكر الذي تريد اضافته"
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
            
            // Set localization for nextButton
            nextButton.setTitle("NEXT", for: .normal)
            nextButton.setTitle("NEXT", for: .highlighted)
            
            // Set localization for zekrNameTextView
            if zekrNameTextView.text == "من فضلك قم بكتابة الذكر الذي تريد اضافته" {
                zekrNameTextView.text = "Please enter the desired zekr."
                zekrNameTextView.textAlignment = .left
            }
            
            // Change isArabic value
            isArabic = false
        }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        zekrNameTextView.resignFirstResponder()
    }
    
    @IBAction func returnButtonPressed(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func nextButtonPressed(_ sender: Any) {
        let addZekrSecondPartVC = storyboard?.instantiateViewController(withIdentifier: "AddZekrSecondPart") as! AddZekrSecondPartViewController
        addZekrSecondPartVC.initWithData(zekrName: zekrName)
        self.present(addZekrSecondPartVC, animated: true, completion: nil)
    }
}
