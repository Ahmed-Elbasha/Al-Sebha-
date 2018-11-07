//
//  CoreDataOperations.swift
//  AlSebha
//
//  Created by Ahmed Elbasha on 11/7/18.
//  Copyright © 2018 Ahmed Elbasha. All rights reserved.
//

import UIKit
import CoreData

extension HomeViewController {
    // MARK: CoreData Operations
    
    // MARK: Fetch Zekr objects from persistent store
    func fetchZekrObjectDataFromPersistentStore(_ handler: @escaping(_ status: Bool) -> ()) {
        // Create ManagedContext object
        let managedContext = appDelegate?.persistentContainer.viewContext
        
        // Create NSFethRequest to fetch Zekr objects.
        let fetchRequest = NSFetchRequest<Zekr>(entityName: "Zekr")
        
        do {
            // Append Zekr objects to the array
            azkar = try (managedContext?.fetch(fetchRequest))!
            handler(true)
        } catch {
            print("Data fetch failed. \(error.localizedDescription)")
            handler(false)
        }
    }
    
    func fetchAzkarObjects() {
        fetchZekrObjectDataFromPersistentStore { (complete) in
            if complete {
                // If the fetch process completed then we will re-check if there rows or not.
                self.checkTheCountOfRowsInTableView()
            }
        }
    }
    
    // MARK: Update the current zekr tasbeh progress
    func updateTheCurentZekrTasbehProgress(zekr: Zekr, _ handler: @escaping(_ status: Bool) ->() ) {
        // Create ManagedContext object
        let managedContext = appDelegate?.persistentContainer.viewContext
        
        // Get the current selected Zekr object
        let currentSelectedZekr = zekr
        
        // If the tarhet is higher than the current progress
        // Then we will increase the current progress by one
        if currentSelectedZekr.tasbehTarget > currentSelectedZekr.tasbehProgess {
            // If currentTasbehProgress's value is not nil or contains
            // The value of tasbehCountLabel transformed to Int
            if let currentTasbehProgress = Int32(tasbehCountLabel.text!) {
                // Then we will store the currentTasbehProgress to Zekr Object
                // Increased by one
                currentSelectedZekr.setValue(currentTasbehProgress + 1, forKey: "tasbehProgess")
                
                // Try to save Zekr Object.
                do {
                    // Save the changes
                    try managedContext?.save()
                    handler(true)
                    tasbehCountLabel.text = "\(currentSelectedZekr.tasbehProgess)"
                } catch {
                    // In case the save process failed we will catch the exception
                    print("\(error.localizedDescription)")
                    handler(false)
                }
            }
        } else {
            handler(false)
            return
        }
    }
    
    // MARK: Delete the current Zekr from persistent store
    func deleteZekr(atIndexPath indexPath: IndexPath) {
        // Create the ManagedContext object
        let managedContext = appDelegate?.persistentContainer.viewContext
        
        // Delete the selecte Zekr object.
        managedContext?.delete(azkar[indexPath.row])
        
        // Try to save Zekr Object.
        do {
            // Save the changes.
            try managedContext?.save()
        } catch {
            // In case the save process failed we will catch the exception
            print("removing zekr failed. \(error.localizedDescription)")
        }
    }
}
