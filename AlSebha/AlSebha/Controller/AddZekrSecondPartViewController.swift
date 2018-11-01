//
//  AddZekrSecondPartViewController.swift
//  AlSebha
//
//  Created by Ahmed Elbasha on 10/30/18.
//  Copyright © 2018 Ahmed Elbasha. All rights reserved.
//

import UIKit

class AddZekrSecondPartViewController: UIViewController {

    @IBOutlet weak var tasbehTargetTextField: UITextField!
    @IBOutlet weak var languageButton: UIButton!
    @IBOutlet weak var addZekrLabel: UILabel!
    @IBOutlet weak var createZekrButton: UIButton!
    @IBOutlet weak var enterDesiredTasbehLabel: UILabel!
    
    var zekrName: String = ""
    var isArabic = false
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        tasbehTargetTextField.font = UIFont.systemFont(ofSize: 87, weight: .bold)
        
        createZekrButton.bindToKeyboard()
        createZekrButton.deattachFromKeyboard()
        
        print(zekrName)
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
        print("createZekrButtonPressed")
        let homeVC = storyboard?.instantiateViewController(withIdentifier: "Home")
        self.present(homeVC!, animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
