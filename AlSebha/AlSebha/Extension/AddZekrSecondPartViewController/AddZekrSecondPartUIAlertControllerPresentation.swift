//
//  AddZekrSecondPartUIAlertControllerPresentation.swift
//  AlSebha
//
//  Created by Ahmed Elbasha on 11/9/18.
//  Copyright © 2018 Ahmed Elbasha. All rights reserved.
//

import UIKit

extension AddZekrSecondPartViewController {
    // MARK: UIAlertController Presentation
    
    func presentInvalidTasbehCountAlertController() {
        var errorMessageTitle = ""
        var errorMessage = ""
        var defaultActionTitle = ""
        
        if isArabic == false {
            errorMessageTitle = "Error"
            errorMessage = "Saving zekr process is failed. Please make sure that you are entered a valid desired tasbeh count number."
            defaultActionTitle = "OK"
        } else {
            errorMessageTitle = "خطآ"
            errorMessage = "فشل عملية حفظ الذكر. من فضلك قم بالتآكد من آنك آدخلت عدد مرات تسبيح صحيح"
            defaultActionTitle = "حسنآ"
        }
        
        let alertController = UIAlertController(title: errorMessageTitle, message: errorMessage, preferredStyle: .alert)
        
        let defaultAction = UIAlertAction(title: defaultActionTitle, style: .default) { (alertAction) in
            return
        }
        
        alertController.addAction(defaultAction)
        
        self.present(alertController, animated: true, completion: nil)
    }
    
    func presentInvalidZekrNameAlertController() {
        var errorMessageTitle = ""
        var errorMessage = ""
        var defaultActionTitle = ""
        
        if isArabic == false {
            errorMessageTitle = "Error"
            errorMessage = "Saving zekr process is failed. Please make sure that you are entered a valid zekr name"
            defaultActionTitle = "OK"
        } else {
            errorMessageTitle = "خطآ"
            errorMessage = "فشل عملية حفظ الذكر. من فضلك قم بالتآكد من انك ادخلك اسم صحيح للذكر"
            defaultActionTitle = "حسنآ"
        }
        
        let alertController = UIAlertController(title: errorMessageTitle, message: errorMessage, preferredStyle: .alert)
        
        let defaultAction = UIAlertAction(title: defaultActionTitle, style: .default) { (alertAction) in
            return
        }
        
        alertController.addAction(defaultAction)
        
        self.present(alertController, animated: true, completion: nil)
    }
    
    func presentErrorAlertController() {
        var errorMessageTitle = ""
        var errorMessage = ""
        var defaultActionTitle =  ""
        
        if self.isArabic == false {
            errorMessageTitle = "Error"
            errorMessage = "an issue is occured while saving zekr data, please try again."
            defaultActionTitle = "OK"
        } else {
            errorMessageTitle = "خطآ"
            errorMessage = "لقد حدث خطآ اثناء حفظ الذكر. من فضلك اعد المحاولة مرة اخرى"
            defaultActionTitle = "حسنآ"
        }
        
        let errorAlertController = UIAlertController(title: errorMessageTitle, message: errorMessage, preferredStyle: .alert)
        
        let defaultAction = UIAlertAction(title: defaultActionTitle, style: .default, handler: { (alertAction) in
            return
        })
        
        errorAlertController.addAction(defaultAction)
        
        self.present(errorAlertController, animated: true, completion: nil)
    }
    
    func presentConfirmationAlertController() {
        var confirmProcessTitle = ""
        var confirmMessage = ""
        var confirmActionTitle = ""
        var cancelActionTitle = ""
        
        if isArabic == false {
            confirmProcessTitle = "Confirm"
            confirmMessage = "You are about to add new zekr. Do you want to proceed?"
            confirmActionTitle = "Yes"
            cancelActionTitle = "No"
        } else {
            confirmProcessTitle = "تآكيد"
            confirmMessage = "آنت على وشك القيام بآضافة ذكر جديد. هل تريد المتابعة؟"
            confirmActionTitle = "نعم"
            cancelActionTitle = "لا"
        }
        
        let confirmationAlertController = UIAlertController(title: confirmProcessTitle, message: confirmMessage, preferredStyle: .alert)
        
        let confirmAction = UIAlertAction(title: confirmActionTitle, style: .destructive) { (alertAction) in
            // Save Zekr object into persistent store.
            
        }
        
        confirmationAlertController.addAction(confirmAction)
        
        let cancelAction = UIAlertAction(title: cancelActionTitle, style: .cancel) { (alertAction) in
            return
        }
        
        confirmationAlertController.addAction(cancelAction)
        
        self.present(confirmationAlertController, animated: true, completion: nil)
    }
}
