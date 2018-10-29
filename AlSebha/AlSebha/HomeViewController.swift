//
//  HomeViewController.swift
//  AlSebha
//
//  Created by Ahmed Elbasha on 10/29/18.
//  Copyright © 2018 Ahmed Elbasha. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var sabbehButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let cyanColor = sabbehButton.currentTitleColor
        sabbehButton.layer.cornerRadius = 5
        sabbehButton.layer.borderColor = cyanColor.cgColor
        sabbehButton.layer.borderWidth = 1
    }


}

