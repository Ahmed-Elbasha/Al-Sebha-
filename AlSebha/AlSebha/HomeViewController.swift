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
    
    let azkar = [Zekr]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let cyanColor = sabbehButton.currentTitleColor
        sabbehButton.layer.cornerRadius = 5
        sabbehButton.layer.borderColor = cyanColor.cgColor
        sabbehButton.layer.borderWidth = 1
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        checkTheCountOfRowsInTableView()
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
    }
    
    @IBAction func sabbehButtonPressed(_ sender: Any) {
    }
}

