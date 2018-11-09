//
//  AddZekrFirstPartViewController.swift
//  AlSebha
//
//  Created by Ahmed Elbasha on 10/30/18.
//  Copyright © 2018 Ahmed Elbasha. All rights reserved.
//

import UIKit

class AddZekrFirstPartViewController: UIViewController {

    // MARK: IBOutlets
    @IBOutlet weak var languageButton: UIButton!
    @IBOutlet weak var zekrNameTextView: UITextView!
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var addZekrLabel: UILabel!
    
    
    // MARK: Class Attributes
    var isArabic = false
    var zekrName: String = ""
    
    
    // MARK: ViewController Life Cycle Methods.
    override func viewDidLoad() {
        super.viewDidLoad()

        // Set delegate for zekrNameTextView
        self.setDelegateForUIControls()
        
        // Set the font of titleLabel
        self.setTitleLabelFont()
        
        // Set observers for sabbehButton
        self.setObserversForSabbehButton()
    }
    
    
    // MARK: IBActions
    @IBAction func languageButtonPressed(_ sender: Any) {
        // Get the current title for the language button
        let currentLanguageButton = languageButton.currentTitle
        
        // Set Localization for UI Controls
        if currentLanguageButton == "عربي" && isArabic == false {
            self.setLocalizationForUIControlsToArabic()
        } else if currentLanguageButton == "English" && isArabic == true {
            self.setLocalizationForUIControlsToEnglish()
        }
    }
    
    @IBAction func returnButtonPressed(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func nextButtonPressed(_ sender: Any) {
        // If zekrNameTextView text property have a value
        if zekrNameTextView.text != "من فضلك قم بكتابة الذكر الذي تريد اضافته" || zekrNameTextView.text != "Please enter the desired zekr."  {
            zekrName = zekrNameTextView.text
            
            // Resign first responder for zekrNameTextView
            zekrNameTextView.resignFirstResponder()
            
            // Create addZekrSecondPartViewController object
            let addZekrSecondPartVC = storyboard?.instantiateViewController(withIdentifier: "AddZekrSecondPart") as! AddZekrSecondPartViewController
            
            // Pass zekrName value to the next ViewController
            addZekrSecondPartVC.initWithData(zekrName: zekrName)
            
            // Show addZekrSecondPartViewController
            self.present(addZekrSecondPartVC, animated: true, completion: nil)
        } else {
            self.showErrorAlertController()
        }
    }
}
