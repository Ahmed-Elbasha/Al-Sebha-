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

    // MARK: IBOutlets
    @IBOutlet weak var sabbehButton: UIButton!
    @IBOutlet weak var languageButton: UIButton!
    @IBOutlet weak var emptyStateLabel: UILabel!
    @IBOutlet weak var emptyStateView: UIView!
    @IBOutlet weak var azkarTableView: UITableView!
    @IBOutlet weak var tasbehCountLabel: UILabel!

    
    // MARK: Class Attributes
    var azkar = [Zekr]()
    var isArabic = false
    var zekrDesiredTasbehCount = 0
    var zekrName = ""
    var zekrCurrentProgress = 0
    var currentZekr: Zekr!
    
    // MARK: ViewController Life Cycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Optimizing the visualization of sabbehButton
        self.setVisualizationForSabbehButton()
        
        // Set the delegate and datasource for tableVuew
        self.setDelegateForUIControls()
        
        // Set the font size of tasbehCountLabel
        self.changeTasbehCountLabelFont()
        
        // Fetch Zekr objects from persistent store
        self.fetchAzkarObjects()
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Check if there are rows in the tableView or not
        self.checkTheCountOfRowsInTableView()
    }
    
    
    // MARK: IBActions
    @IBAction func addZekrButtonPressed(_ sender: Any) {
        self.presentAddZekrFirstPartViewController()
    }
    
    @IBAction func languageButtonPressed(_ sender: Any) {
        // Gets the current title of languageButton.
        let currentlanguageButtonTitle = languageButton.currentTitle
        
        // Set localization for UI Controls.
        if currentlanguageButtonTitle == "عربي" && isArabic == false {
            self.setLocalizationForUIControlsToArabic()
        } else if currentlanguageButtonTitle == "English" && isArabic == true {
            self.setLocalizationForUIControlsToEnglish()
        }
        
        // reload Azkar TableView Data.
        azkarTableView.reloadData()
    }
    
    @IBAction func sabbehButtonPressed(_ sender: Any) {
        self.updateTheCurentZekrTasbehProgress(zekr: currentZekr!) { (complete) in
            if complete {
                self.azkarTableView.reloadData()
            } else {
                return
            }
        }
    }
}

