//
//  Delegation.swift
//  AlSebha
//
//  Created by Ahmed Elbasha on 11/7/18.
//  Copyright © 2018 Ahmed Elbasha. All rights reserved.
//

import UIKit

extension HomeViewController {
    // MARK: Delegation

    // MARK: Set delegate for UI Controls
    func setDelegateForUIControls() {
        azkarTableView.delegate = self
        azkarTableView.dataSource = self
    }
}
