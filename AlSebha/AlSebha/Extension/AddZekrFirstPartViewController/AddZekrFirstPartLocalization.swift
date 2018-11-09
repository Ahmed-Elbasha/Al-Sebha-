//
//  AddZekrFirstPartLocalization.swift
//  AlSebha
//
//  Created by Ahmed Elbasha on 11/9/18.
//  Copyright © 2018 Ahmed Elbasha. All rights reserved.
//

import UIKit

extension AddZekrFirstPartViewController {
    // MARK: Localization
    
    // Change isArabic value
    func setIsArabicValue() {
        if isArabic == false {
            isArabic = true
        } else {
            isArabic = false
        }
    }
    
    // MARK: Set localization for UI Controls to Arabic
    
    // Set localization for addZekrLabel to Arabic
    func setLocalizationForAddZekrLabeltoArabic() {
        // Set localization for addZekrLabel
        addZekrLabel.text = "آضافة ذكر"
    }
    
    // Set localization for languageButton
    func setLocalizationForLanguageButtonToArabic() {
        // Set localization for languageButton
        languageButton.setTitle("English", for: .normal)
        languageButton.setTitle("English", for: .highlighted)
        languageButton.titleLabel?.font = UIFont(name: "Avenir Next Regular", size: 15)
    }
    
    // Set localization for nextButtons to Arabic
    func setLocalizationForAddZekrButtonToArabic() {
        // Set localization for nextButton
        nextButton.setTitle("التالي", for: .normal)
        nextButton.setTitle("التالي", for: .highlighted)
    }
    
    // Set localization for zekrNameTextView to Arabic
    func setLocalizationForZekrNameTextViewToArabic() {
        // Set localization for zekrNameTextView
        if zekrNameTextView.text == "Please enter the desired zekr." {
            zekrNameTextView.text = "من فضلك قم بكتابة الذكر الذي تريد اضافته"
            zekrNameTextView.textAlignment = .right
        } else {
            zekrNameTextView.textAlignment = .right
        }
    }
    
    // Set localization for UI Controls to Arabic
    func setLocalizationForUIControlsToArabic() {
        // Set localization for addZekrLabel
        self.setLocalizationForAddZekrLabeltoArabic()
        
        // Set localization for languageButton
        self.setLocalizationForLanguageButtonToArabic()
        
        // Set localization for nextButton
        self.setLocalizationForAddZekrButtonToArabic()
        
        // Set localization for zekrNameTextView
        self.setLocalizationForZekrNameTextViewToArabic()
        
        // Change isArabic value.
        self.setIsArabicValue()
    }
    
    // MARK: Set localization for UI Controls to English
    
    // Set localization for addZekrLabel to English
    func setLocalizationForAddZekrLabelToEnglish() {
        // Set localization for addZekrLabel
        addZekrLabel.text = "Add Zekr"
    }
    
    // Set localization for languageButton to English
    func setLocalizationForLanguageButtonToEnglish() {
        // Set localization for languageButton
        languageButton.setTitle("عربي", for: .normal)
        languageButton.setTitle("عربي", for: .highlighted)
        languageButton.titleLabel?.font = UIFont(name: "Avenir Next Regular", size: 17)
    }
    
    // Set localization for nextButton to English
    func setLocalizationForNextButtonToEnglish() {
        // Set localization for nextButton
        nextButton.setTitle("NEXT", for: .normal)
        nextButton.setTitle("NEXT", for: .highlighted)
    }
    
    // Set localization for zekrNameTextView to English
    func setLocalizationForZekrNameTextViewToEnglish() {
        // Set localization for zekrNameTextView
        if zekrNameTextView.text == "من فضلك قم بكتابة الذكر الذي تريد اضافته" {
            zekrNameTextView.text = "Please enter the desired zekr."
            zekrNameTextView.textAlignment = .left
        } else {
            zekrNameTextView.textAlignment = .left
        }
    }
    
    // Set localization for UI Controls to English
    func setLocalizationForUIControlsToEnglish() {
        // Set localization for addZekrLabel
        self.setLocalizationForAddZekrLabelToEnglish()
        
        // Set localization for languageButton
        self.setLocalizationForLanguageButtonToEnglish()
        
        // Set localization for nextButton
        self.setLocalizationForNextButtonToEnglish()
        
        // Set localization for zekrNameTextView
        self.setLocalizationForZekrNameTextViewToEnglish()
        
        // Change isArabic value
        self.setIsArabicValue()
    }
}
