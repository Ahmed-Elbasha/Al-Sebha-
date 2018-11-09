//
//  AddZekrSecondPartViewController.swift
//  AlSebha
//
//  Created by Ahmed Elbasha on 10/30/18.
//  Copyright © 2018 Ahmed Elbasha. All rights reserved.
//

import UIKit
import CoreData

let appDelegate = UIApplication.shared.delegate as? AppDelegate

class AddZekrSecondPartViewController: UIViewController {

    // MARK: IBOutlets
    @IBOutlet weak var tasbehTargetTextField: UITextField!
    @IBOutlet weak var languageButton: UIButton!
    @IBOutlet weak var addZekrLabel: UILabel!
    @IBOutlet weak var createZekrButton: UIButton!
    @IBOutlet weak var enterDesiredTasbehLabel: UILabel!
    @IBOutlet weak var createButtonBottomConstraint: NSLayoutConstraint!
    
    
    // MARK: Class Attributes
    
    // Store incoming zekr name data
    var zekrName: String = ""
    // Create isArabic variable
    var isArabic = false
    // Store the desiredTasbehCount value
    var desiredTasbehCount: Int32 = 0
    
    
    // MARK: ViewController Life Cycle Methods.
    override func viewDidLoad() {
        super.viewDidLoad()

        // Set the font of tasbehTargetTextField
        self.setFontTasbehTargetTextField()
        
        // Set the font of languageButton
        self.setFontForLanguageButton()
        
        // Set observers for createZekr button
        self.setObserversForCreateZekrButton()
        
        // Set delegate for tasbehTargetTextField
        self.setDelegateForUIControls()
    }
    
    // MARK: Get data from the previous ViewController
    func initWithData(zekrName: String) {
        self.zekrName = zekrName
    }
    
    // MARK: IBActions
    @IBAction func returnButtonPressed(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func languageButtonPressed(_ sender: Any) {
        // Get the current title for language button
        let currentLanguageButtonTitle = languageButton.currentTitle
        
        // Set localization for UI
        if currentLanguageButtonTitle == "عربي" && isArabic == false {
            self.setLocalizationForUIControlsToArabic()
        } else if currentLanguageButtonTitle == "English" && isArabic == true {
            self.setLocalizationForUIControlsToEnglish()
        }
    }
    
    @IBAction func createZekrButtonPressed(_ sender: Any) {
        // Show confirmation UIAlertController
        self.presentConfirmationAlertController()
    }
}
