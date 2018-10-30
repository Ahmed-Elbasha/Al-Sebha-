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

    @IBOutlet weak var sabbehButton: UIButton!
    @IBOutlet weak var languageButton: UIButton!
    @IBOutlet weak var emptyStateLabel: UILabel!
    @IBOutlet weak var emptyStateView: UIView!
    @IBOutlet weak var azkarTableView: UITableView!
    @IBOutlet weak var tasbehCountLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let cyanColor = sabbehButton.currentTitleColor
        sabbehButton.layer.cornerRadius = 5
        sabbehButton.layer.borderColor = cyanColor.cgColor
        sabbehButton.layer.borderWidth = 1
    }
    
    @IBAction func addZekrButtonPressed(_ sender: Any) {
        print("addZekrButtonPressed")
    }
    
    @IBAction func languageButtonPressed(_ sender: Any) {
        print("languageButtonPressed")
    }
    
    @IBAction func sabbehButtonPressed(_ sender: Any) {
        print("sabbehButtonPressed")
    }
}

