//
//  AddZekrFirstPartDelegation.swift
//  AlSebha
//
//  Created by Ahmed Elbasha on 11/9/18.
//  Copyright © 2018 Ahmed Elbasha. All rights reserved.
//

import UIKit

extension AddZekrFirstPartViewController {
    // MARK: Delegation
    
    // MARK: Set Delegate For UI Controls
    func setDelegateForUIControls() {
        zekrNameTextView.delegate = self
    }
}
