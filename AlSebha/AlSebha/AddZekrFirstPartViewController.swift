//
//  AddZekrFirstPartViewController.swift
//  AlSebha
//
//  Created by Ahmed Elbasha on 10/30/18.
//  Copyright © 2018 Ahmed Elbasha. All rights reserved.
//

import UIKit

class AddZekrFirstPartViewController: UIViewController {

    @IBOutlet weak var languageButton: UIButton!
    @IBOutlet weak var zekrNameTextView: UITextView!
    @IBOutlet weak var nextButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func languageButtonPressed(_ sender: Any) {
        print("languageButtonPressed")
    }
    
    @IBAction func returnButtonPressed(_ sender: Any) {
        print("returnButtonPressed")
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func nextButtonPressed(_ sender: Any) {
        print("nextButtonPressed")
    }
}
