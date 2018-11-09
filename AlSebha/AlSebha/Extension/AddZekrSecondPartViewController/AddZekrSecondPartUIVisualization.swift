//
//  AddZekrSecondPartUIVisualization.swift
//  AlSebha
//
//  Created by Ahmed Elbasha on 11/9/18.
//  Copyright © 2018 Ahmed Elbasha. All rights reserved.
//

import UIKit

extension AddZekrSecondPartViewController {
    // MARK: UI Visualization
    
    // MARK: Change the style of the status bar
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    func setObserversForCreateZekrButton() {
        // Bind createZekrButton to keyboard
        createZekrButton.bindToKeyboard()
        // Deattach createZekrButton from keyboard
        createZekrButton.deattachFromKeyboard()
    }
    
    func setFontForLanguageButton() {
        languageButton.titleLabel?.font = UIFont(name: "Avenir Next Regular", size: 17)
    }
    
    func setFontTasbehTargetTextField() {
        tasbehTargetTextField.font = UIFont.systemFont(ofSize: 87, weight: .bold)
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        tasbehTargetTextField.resignFirstResponder()
    }
}
