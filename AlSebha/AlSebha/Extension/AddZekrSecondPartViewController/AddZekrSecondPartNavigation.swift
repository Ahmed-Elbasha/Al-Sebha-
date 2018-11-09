//
//  AddZekrSecondPartNavigation.swift
//  AlSebha
//
//  Created by Ahmed Elbasha on 11/9/18.
//  Copyright © 2018 Ahmed Elbasha. All rights reserved.
//

import UIKit

extension AddZekrSecondPartViewController {
    // MARK: Navigation
    
    // MARK: Show HomeViewController
    func presentHomeViewController() {
        let homeVC = self.storyboard?.instantiateViewController(withIdentifier: "Home")
        self.present(homeVC!, animated: true, completion: nil)
    }

}
