//
//  UIVisualization.swift
//  AlSebha
//
//  Created by Ahmed Elbasha on 11/9/18.
//  Copyright © 2018 Ahmed Elbasha. All rights reserved.
//

import UIKit

extension AddZekrFirstPartViewController {
    // MARK: UI Visualization
    
    // MARK: Set observers for sabbehButton
    func setObserversForSabbehButton() {
        // Bind nextButton to keyboard
        nextButton.bindToKeyboard()
        // Deattach nextButton from Keyboard
        nextButton.deattachFromKeyboard()
    }
    
    // MARK: Set the font of titleLabel
    func setTitleLabelFont() {
        languageButton.titleLabel?.font = UIFont(name: "Avenir Next Regular", size: 17)
    }
    
    // MARK: Resign first responder for all inputs
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        // Resign First Responder for zekrNameTextView
        zekrNameTextView.resignFirstResponder()
    }
    
    // Change the style of the StatusBar
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
}
