//
//  AddZekrSecondPartLocalization.swift
//  AlSebha
//
//  Created by Ahmed Elbasha on 11/9/18.
//  Copyright © 2018 Ahmed Elbasha. All rights reserved.
//

import UIKit

extension AddZekrSecondPartViewController {
    // MARK: Localization
    
    // MARK: Set isArabic value
    
    func setIsArabicValue() {
        if isArabic == false {
            isArabic = true
        } else {
            isArabic = false
        }
    }
    
    // MARK: Set localization for UI controls to Arabic
    
    func setLocalizationForLanguageButtonToArabic() {
        languageButton.setTitle("English", for: .normal)
        languageButton.setTitle("English", for: .highlighted)
        languageButton.titleLabel?.font = UIFont(name: "Avenir Next Regular", size: 15)
    }
    
    func setLocalizationForAddZekrLabelToArabic() {
        addZekrLabel.text = "اضافة ذكر"
    }
    
    func setLocalizationForCreateZekrButtonToArabic() {
        createZekrButton.setTitle("انشاء", for: .normal)
        createZekrButton.setTitle("انشاء", for: .highlighted)
    }
    
    func setLocalizationForEnterDesiredTabseehLabelToArabic() {
        enterDesiredTasbehLabel.text = "من فضلك ادخل عدد مرات التسبيج الذي تريده"
    }
    
    func setLocalizationForUIControlsToArabic() {
        // Set localization for languageButton
        self.setLocalizationForLanguageButtonToArabic()
        
        // Set localization for addZekrLabel
        self.setLocalizationForAddZekrLabelToArabic()
        
        // Set localization for createZekrButton
        self.setLocalizationForCreateZekrButtonToArabic()
        
        // Set localization for enterDesiredTasbehLabel
        self.setLocalizationForEnterDesiredTabseehLabelToArabic()
        
        // Change isArabic value
        self.setIsArabicValue()
    }
    
    // MARK: Set localization for UI controls to English
    
    func setLocalizationForLanguageButtonToEnglish() {
        languageButton.setTitle("عربي", for: .normal)
        languageButton.setTitle("عربي", for: .highlighted)
        languageButton.titleLabel?.font = UIFont(name: "Avenir Next Regular", size: 17)
    }
    
    func setLocalizationForAddZekrLabelToEnglish() {
        addZekrLabel.text = "Add Zekr"
    }
    
    func setLocalizationForCreateZekrButtonToEnglish() {
        createZekrButton.setTitle("CREATE", for: .normal)
        createZekrButton.setTitle("CREATE", for: .highlighted)
    }
    
    func setLocalizationForEnterDesiredTasbeehLabelToEnglish() {
        enterDesiredTasbehLabel.text = "Please set the desired tasbeh target"
    }
    
    func setLocalizationForUIControlsToEnglish() {
        // Set localization for languageButton
        self.setLocalizationForLanguageButtonToEnglish()
        
        // Set localization for addZekrLabel
        self.setLocalizationForAddZekrLabelToEnglish()
        
        // Set localization for createZekrButton
        self.setLocalizationForCreateZekrButtonToEnglish()
        
        // Set Localization for enterDesiredTasbehLabel
        self.setLocalizationForEnterDesiredTasbeehLabelToEnglish()
        
        // Change isArabic value
        self.setIsArabicValue()
    }
}
