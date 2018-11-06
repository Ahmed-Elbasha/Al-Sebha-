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
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "zekrCell") as? ZekrCell else {return UITableViewCell()}
        if let currentZekr = azkar[indexPath.row] as? Zekr {
            if isArabic == false {
                cell.textLabel?.textAlignment = .left
                cell.detailTextLabel?.textAlignment = .left
                cell.semanticContentAttribute = .forceLeftToRight
            } else {
                cell.textLabel?.textAlignment = .right
                cell.detailTextLabel?.textAlignment = .right
                cell.semanticContentAttribute = .forceRightToLeft
            }
            cell.textLabel?.text = currentZekr.zekrName
            cell.detailTextLabel?.text = String(describing: currentZekr.tasbehTarget)
            
            if currentZekr.tasbehTarget <= currentZekr.tasbehProgess {
                cell.zekrCompleteView.isHidden = false
                cell.zekrCompleteLabel.isHidden = false
                
                if isArabic == false {
                    cell.zekrCompleteLabel.text = "Zekr Complete"
                } else {
                    cell.zekrCompleteLabel.text = "آكتمال الذكر"
                }
                cell.layer.borderWidth = 0
                cell.layer.borderColor = UIColor.clear.cgColor
            }
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let rowIndex = indexPath.row
        let currentZekr = azkar[rowIndex]
        self.currentZekr = currentZekr
        tasbehCountLabel.text = "\(currentZekr.tasbehProgess)"
    }
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            
        }
    }
}
