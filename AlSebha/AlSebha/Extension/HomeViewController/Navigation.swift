//
//  Navigation.swift
//  AlSebha
//
//  Created by Ahmed Elbasha on 11/7/18.
//  Copyright © 2018 Ahmed Elbasha. All rights reserved.
//

import UIKit

extension HomeViewController {
    // MARK: Navigation
    
    // MARK: Show AddZekrFirstPartViewController
    func presentAddZekrFirstPartViewController() {
        let addZekrFirstPartVC = storyboard?.instantiateViewController(withIdentifier: "AddZekrFirstPart")
        self.present(addZekrFirstPartVC!, animated: true, completion: nil)
    }
}
