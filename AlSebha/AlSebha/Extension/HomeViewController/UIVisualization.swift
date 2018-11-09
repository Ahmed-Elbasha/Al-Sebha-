//
//  UIVisualization.swift
//  AlSebha
//
//  Created by Ahmed Elbasha on 11/7/18.
//  Copyright © 2018 Ahmed Elbasha. All rights reserved.
//

import UIKit

extension HomeViewController {
    // MARK: UI Visualization
    
    // MARK: Check if there rows in the tableView or not
    func checkTheCountOfRowsInTableView() {
        if azkar.count == 0 {
            // If there are no rows in the table then the tableView will be hidden
            azkarTableView.isHidden = true
            // Then the emptyStateView will be shown
            emptyStateView.isHidden = false
            // Then the emptyStateLabel will be shown
            emptyStateLabel.isHidden = false
        } else {
            // If there are rows in the table then the data in tableView will be reloaded
            azkarTableView.reloadData()
            // Then the tableView will be shown
            azkarTableView.isHidden = false
            // Then the emptyStateView will be hidden
            emptyStateView.isHidden = true
            // Then the emptyStateLabel will be hidden.
            emptyStateLabel.isHidden = true
        }
    }
    
    // MARK: Set visualization for SabbehButton
    func setVisualizationForSabbehButton() {
        // Optimizing the visualization of sabbehButton
        let cyanColor = sabbehButton.currentTitleColor
        sabbehButton.layer.cornerRadius = 5
        sabbehButton.layer.borderColor = cyanColor.cgColor
        sabbehButton.layer.borderWidth = 1
    }
    
    // MARK: Change tasbehCountLabel Font
    func changeTasbehCountLabelFont() {
        // Set the font size of tasbehCountLabel
        tasbehCountLabel.font = UIFont.systemFont(ofSize: 87, weight: .bold)
    }
    
    // MARK: Change the style of the StatusBar
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
}
