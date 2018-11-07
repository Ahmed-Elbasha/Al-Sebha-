//
//  HomeTableViewDelegate.swift
//  AlSebha
//
//  Created by Ahmed Elbasha on 11/2/18.
//  Copyright © 2018 Ahmed Elbasha. All rights reserved.
//

import Foundation
import UIKit
import CoreData

extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return azkar.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Create a TableViewCell
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "zekrCell") as? ZekrCell else {return UITableViewCell()}
        
        // If currentZekr value is not nil
        if let currentZekr = azkar[indexPath.row] as? Zekr {
            if isArabic == false {
                // Change the text alignment of text label to left
                cell.textLabel?.textAlignment = .left
                
                // Change the text alignment detail text label alignment to left
                cell.detailTextLabel?.textAlignment = .left
                
                // Change the semanticContentAttribute of the cell to force left to right.
                cell.semanticContentAttribute = .forceLeftToRight
            } else {
                // Change the text alignment of text label to right
                cell.textLabel?.textAlignment = .right
                
                // Change the text alignment of detail text label to right
                cell.detailTextLabel?.textAlignment = .right
                
                // Change the semanticContentAttribute of the cell to force right to left.
                cell.semanticContentAttribute = .forceRightToLeft
            }
            
            // Set the value of text property of textLabel
            cell.textLabel?.text = currentZekr.zekrName
            
            // Set the value of text property of detailTextLabel
            cell.detailTextLabel?.text = String(describing: currentZekr.tasbehTarget)
            
            // If the tasbeh target of the current zekr is lower than or equal to
            // the tasbeh progress
            if currentZekr.tasbehTarget <= currentZekr.tasbehProgess {
                // Show the zekrCompleteView
                cell.zekrCompleteView.isHidden = false
                
                // Show the zekrCompleteLabel
                cell.zekrCompleteLabel.isHidden = false
                
                // Set localization for zekrCompleteLabel
                if isArabic == false {
                    cell.zekrCompleteLabel.text = "Zekr Complete"
                } else {
                    cell.zekrCompleteLabel.text = "آكتمال الذكر"
                }
                
                // Change the border width of the cell
                cell.layer.borderWidth = 0
                // Change the border color of the cell
                cell.layer.borderColor = UIColor.clear.cgColor
            }
        }
        
        // Return the custom cell
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // Store the row index
        let rowIndex = indexPath.row
        // Get the current zekr
        let currentZekr = azkar[rowIndex]
        // Give the current zekr object to the public currentZekr variable as a value
        self.currentZekr = currentZekr
        // Change the tasbehCountLabel text
        tasbehCountLabel.text = "\(currentZekr.tasbehProgess)"
    }
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the selected Zekr object from persistent store
            self.deleteZekr(atIndexPath: indexPath)
            // Remove the current Zekr element from the array
            self.azkar.remove(at: indexPath.row)
            // Delete the selected row from the tableView
            tableView.deleteRows(at: [indexPath], with: .automatic)
            // Fetch all the currently stored Zekr objects from persistent store
            self.fetchAzkarObjects()
        }
    }
}
