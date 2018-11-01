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

    @IBOutlet weak var tasbehTargetTextField: UITextField!
    @IBOutlet weak var languageButton: UIButton!
    @IBOutlet weak var addZekrLabel: UILabel!
    @IBOutlet weak var createZekrButton: UIButton!
    @IBOutlet weak var enterDesiredTasbehLabel: UILabel!
    
    var zekrName: String = ""
    var isArabic = false
    var desiredTasbehCount: Int32 = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        tasbehTargetTextField.font = UIFont.systemFont(ofSize: 87, weight: .bold)
        
        createZekrButton.bindToKeyboard()
        createZekrButton.deattachFromKeyboard()
        
        tasbehTargetTextField.delegate = self
        
        print(zekrName)
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        tasbehTargetTextField.resignFirstResponder()
    }
    
    func storeZekrObjectDataIntoPersistentStore(_ handler: @escaping(_ status: Bool) -> ()) {
        let managedContext = appDelegate?.persistentContainer.viewContext
        let zekrEntity = NSEntityDescription.entity(forEntityName: "Zekr", in: managedContext!)
        
        let newZekr = NSManagedObject(entity: zekrEntity!, insertInto: managedContext)
        
        
        if let zekrName = self.zekrName as? String {
            newZekr.setValue(zekrName, forKey: "zekrName")
        } else {
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
        
        
        if let desiredTasbehCount = self.desiredTasbehCount as? Int32 {
            if desiredTasbehCount > 0 {
                newZekr.setValue(desiredTasbehCount, forKey: "tasbehTarget")
            } else {
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
            
        } else {
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
        
        newZekr.setValue(0, forKey: "tasbehProgess")
        
        do {
            try managedContext?.save()
            print("Zekr saved successfully.")
            handler(true)
        } catch {
            print("Zekr saving failed. \(error.localizedDescription)")
            handler(false)
        }
    }
    
    func initWithData(zekrName: String) {
        self.zekrName = zekrName
    }
    
    @IBAction func returnButtonPressed(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func languageButtonPressed(_ sender: Any) {
        let currentLanguageButtonTitle = languageButton.currentTitle
        
        if currentLanguageButtonTitle == "عربي" && isArabic == false {
            // Set localization for languageButton
            languageButton.setTitle("English", for: .normal)
            languageButton.setTitle("English", for: .highlighted)
            
            // Set localization for addZekrLabel
            addZekrLabel.text = "اضافة ذكر"
            
            // Set localization for createZekrButton
            createZekrButton.setTitle("انشاء", for: .normal)
            createZekrButton.setTitle("انشاء", for: .highlighted)
            
            // Set localization for enterDesiredTasbehLabel
            enterDesiredTasbehLabel.text = "من فضلك ادخل عدد مرات التسبيج الذي تريده"
            
            // Change isArabic value
            isArabic = true
        } else if currentLanguageButtonTitle == "English" && isArabic == true {
            // Set localization for languageButton
            languageButton.setTitle("عربي", for: .normal)
            languageButton.setTitle("عربي", for: .highlighted)
            
            // Set localization for addZekrLabel
            addZekrLabel.text = "Add Zekr"
            
            // Set localization for createZekrButton
            createZekrButton.setTitle("CREATE", for: .normal)
            createZekrButton.setTitle("CREATE", for: .highlighted)
            
            // Set Localization for enterDesiredTasbehLabel
            enterDesiredTasbehLabel.text = "Please set the desired tasbeh target"
            
            // Change isArabic value
            isArabic = false
        }
    }
    
    @IBAction func createZekrButtonPressed(_ sender: Any) {
        // Show confirmation UIAlertController
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
            self.storeZekrObjectDataIntoPersistentStore { (complete) in
                if complete {
                    // Present HomeViewController
                    let homeVC = self.storyboard?.instantiateViewController(withIdentifier: "Home")
                    self.present(homeVC!, animated: true, completion: nil)
                } else {
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
            }
        }
        
        confirmationAlertController.addAction(confirmAction)
        
        let cancelAction = UIAlertAction(title: cancelActionTitle, style: .cancel) { (alertAction) in
            return
        }
        
        confirmationAlertController.addAction(cancelAction)
        
        self.present(confirmationAlertController, animated: true, completion: nil)
    }
}
