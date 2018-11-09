//
//  Localization.swift
//  AlSebha
//
//  Created by Ahmed Elbasha on 11/7/18.
//  Copyright © 2018 Ahmed Elbasha. All rights reserved.
//

import UIKit

extension HomeViewController {
    // MARK: Localization
    
    func setIsArabicValue() {
        if isArabic == false {
            isArabic = true
        } else {
            isArabic = false
        }
    }
    
    // MARK: Set localization for  UI controls to Arabic
    
    func setLocalizationForSabbehButtonToArabic() {
        // Set localization for sabbehButton
        sabbehButton.setTitle("سبح", for: .normal)
        sabbehButton.setTitle("سبح", for: .highlighted)
    }
    
    func setLocalizationForLanguageButtonToArabic() {
        // Set localization for languageButton
        languageButton.setTitle("English", for: .normal)
        languageButton.setTitle("English", for: .highlighted)
    }
    
    func setLocalizationForEmptyStateLabelToArabic() {
        // Set localization for emptyStateLabel
        emptyStateLabel.text = "لايوجد ذكر في الوقت الحالي اضغط + لآضافة ذكر جديد"
        emptyStateLabel.textAlignment = .right
    }
    
    func setLocalizationForUIControlsToArabic() {
        // Set localization for sabbehButton
        self.setLocalizationForSabbehButtonToArabic()
        
        // Set localization for languageButton
        self.setLocalizationForLanguageButtonToArabic()
        
        // Set localization for emptyStateLabel
        self.setLocalizationForEmptyStateLabelToArabic()
        
        // Change isArabic value
        self.setIsArabicValue()
    }
    
    // MARK: Set localization for  UI controls to English
    
    func setLocalizationForSabbehButtonToEnglish() {
        // Set localization for sabbehButton
        sabbehButton.setTitle("Sabbeh", for: .normal)
        sabbehButton.setTitle("Sabbeh", for: .highlighted)
    }
    
    func setLocalizationForLanguageButtonToEnglish() {
        // Set localization for languageButton
        languageButton.setTitle("عربي", for: .normal)
        languageButton.setTitle("عربي", for: .highlighted)
    }
    
    func setLocalizationForEmptyStateLabelToEnglish() {
        // Set localization for emptyStateLabel
        emptyStateLabel.text = "There is no zekr in the current time press + to add new zekr"
        emptyStateLabel.textAlignment = .left
    }
    
    func setLocalizationForUIControlsToEnglish() {
        // Set localization for sabbehButton
        self.setLocalizationForSabbehButtonToEnglish()
        
        // Set localization for languageButton
        self.setLocalizationForLanguageButtonToEnglish()
        
        // Set localization for emptyStateLabel
        self.setLocalizationForEmptyStateLabelToEnglish()
        
        // Change isArabic value
        self.setIsArabicValue()
    }
}
