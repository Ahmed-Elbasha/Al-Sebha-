//
//  AddZekrSecondPartDelegation.swift
//  AlSebha
//
//  Created by Ahmed Elbasha on 11/9/18.
//  Copyright © 2018 Ahmed Elbasha. All rights reserved.
//

import UIKit

extension AddZekrSecondPartViewController {
    // MARK: Delegation
    
    func setDelegateForUIControls() {
        // Set delegate for tasbehTargetTextField
        tasbehTargetTextField.delegate = self
    }
}
