//
//  AddZekrFirstPartUIAlertControllerPresentation.swift
//  AlSebha
//
//  Created by Ahmed Elbasha on 11/9/18.
//  Copyright © 2018 Ahmed Elbasha. All rights reserved.
//

import UIKit

extension AddZekrFirstPartViewController {
    // MARK: UIAlertController Presentation
    
    // MARK: Show Error Alert Controller
    func showErrorAlertController() {
        // Create a variable to store error message title
        var errorMessageTitle = ""
        // Create a variable to store error message
        var errorMessage = ""
        // Create a variable to store default action title
        var defaultActionTitle = ""
        
        if isArabic == false {
            // If the language is English we will show the message title in English
            errorMessageTitle = "Error"
            // Then we will show the error message in English
            errorMessage = "Please enter a valid name for the zekr."
            // Then we will show the default action title in English
            defaultActionTitle = "OK"
        } else {
            // If the language is Arabic we will show the message title in Arabic
            errorMessageTitle = "خطآ"
            // Then we will show the error message in Arabic
            errorMessage = "من فضلك ادخل اسم صحيح للذكر."
            // Then we will show the default action title in Arabic
            defaultActionTitle = "حسنآ"
        }
        
        // Create Error UIAlertController object
        let alertController = UIAlertController(title: errorMessageTitle, message: errorMessage, preferredStyle: .alert)
        
        // Create the default  UIAlertAction object
        let defaultAction = UIAlertAction(title: defaultActionTitle, style: .default) { (alertAction) in
            return
        }
        
        // Add the UIAlertAction to the Error Alert Controller
        alertController.addAction(defaultAction)
        
        // Show the Error Alert Controller
        self.present(alertController, animated: true, completion: nil)
    }
}
