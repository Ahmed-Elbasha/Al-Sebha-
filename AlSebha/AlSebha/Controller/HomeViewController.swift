//
//  HomeViewController.swift
//  AlSebha
//
//  Created by Ahmed Elbasha on 10/29/18.
//  Copyright © 2018 Ahmed Elbasha. All rights reserved.
//

import UIKit
import CoreData

class HomeViewController: UIViewController {

    // MARK IBOutlets
    @IBOutlet weak var sabbehButton: UIButton!
    @IBOutlet weak var languageButton: UIButton!
    @IBOutlet weak var emptyStateLabel: UILabel!
    @IBOutlet weak var emptyStateView: UIView!
    @IBOutlet weak var azkarTableView: UITableView!
    @IBOutlet weak var tasbehCountLabel: UILabel!
    @IBOutlet weak var zekrCompleteLabel: UILabel!
    @IBOutlet weak var zekrCompleteView: UIView!
    
    
    // MARK Class Attributes
    let azkar = [Zekr]()
    var isArabic = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let cyanColor = sabbehButton.currentTitleColor
        sabbehButton.layer.cornerRadius = 5
        sabbehButton.layer.borderColor = cyanColor.cgColor
        sabbehButton.layer.borderWidth = 1
        
        setDelegateForUIControls()
        
        tasbehCountLabel.font = UIFont.systemFont(ofSize: 87, weight: .bold)
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        checkTheCountOfRowsInTableView()
    }
    
    func setDelegateForUIControls() {
        azkarTableView.delegate = self
        azkarTableView.dataSource = self
    }
    
    func checkTheCountOfRowsInTableView() {
        if azkar.count == 0 {
            azkarTableView.isHidden = true
            emptyStateView.isHidden = false
            emptyStateLabel.isHidden = false
        } else {
            azkarTableView.reloadData()
            azkarTableView.isHidden = false
            emptyStateView.isHidden = true
            emptyStateLabel.isHidden = true
        }
    }
    
    @IBAction func addZekrButtonPressed(_ sender: Any) {
        let addZekrFirstPartVC = storyboard?.instantiateViewController(withIdentifier: "AddZekrFirstPart")
        self.present(addZekrFirstPartVC!, animated: true, completion: nil)
    }
    
    @IBAction func languageButtonPressed(_ sender: Any) {
        // Gets the current title of languageButton.
        let currentlanguageButtonTitle = languageButton.currentTitle
        
        if currentlanguageButtonTitle == "عربي" && isArabic == false {
            // Set localization for sabbehButton
            sabbehButton.setTitle("سبح", for: .normal)
            sabbehButton.setTitle("سبح", for: .highlighted)
            
            // Set localization for languageButton
            languageButton.setTitle("English", for: .normal)
            languageButton.setTitle("English", for: .highlighted)
            
            // Set localization for emptyStateLabel
            emptyStateLabel.text = "لايوجد ذكر في الوقت الحالي اضغط + لآضافة ذكر جديد"
            emptyStateLabel.textAlignment = .right
            isArabic = true
        } else if currentlanguageButtonTitle == "English" && isArabic == true {
            // Set localization for sabbehButton
            sabbehButton.setTitle("Sabbeh", for: .normal)
            sabbehButton.setTitle("Sabbeh", for: .highlighted)
            
            // Set localization for languageButton
            languageButton.setTitle("عربي", for: .normal)
            languageButton.setTitle("عربي", for: .highlighted)
            
            // Set localization for emptyStateLabel
            emptyStateLabel.text = "There is no zekr in the current time press + to add new zekr"
            emptyStateLabel.textAlignment = .left
            
            // Change isArabic value
            isArabic = false
        }
        
        // reload Azkar TableView Data.
        azkarTableView.reloadData()
    }
    
    @IBAction func sabbehButtonPressed(_ sender: Any) {
    }
}

