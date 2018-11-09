//
//  AddZekrSecondPartCoreDataOperations.swift
//  AlSebha
//
//  Created by Ahmed Elbasha on 11/9/18.
//  Copyright © 2018 Ahmed Elbasha. All rights reserved.
//

import UIKit
import CoreData

extension AddZekrSecondPartViewController {
    // MARK: CoreData Operations
    
    // MARK: Store Zekr object
    func storeZekrObjectDataIntoPersistentStore(_ handler: @escaping(_ status: Bool) -> ()) {
        let managedContext = appDelegate?.persistentContainer.viewContext
        let zekrEntity = NSEntityDescription.entity(forEntityName: "Zekr", in: managedContext!)
        
        let newZekr = NSManagedObject(entity: zekrEntity!, insertInto: managedContext)
        
        
        if let zekrName = self.zekrName as? String {
            newZekr.setValue(zekrName, forKey: "zekrName")
        } else {
            self.presentInvalidZekrNameAlertController()
        }
        
        
        if let desiredTasbehCount = self.desiredTasbehCount as? Int32 {
            if desiredTasbehCount > 0 {
                newZekr.setValue(desiredTasbehCount, forKey: "tasbehTarget")
            } else {
                self.presentInvalidTasbehCountAlertController()
            }
            
        } else {
            self.presentInvalidTasbehCountAlertController()
        }
        
        newZekr.setValue(0, forKey: "tasbehProgess")
        
        do {
            try managedContext?.save()
            print("Zekr saved successfully.")
            handler(true)
        } catch {
            print("Zekr saving failed. \(error.localizedDescription)")
            handler(false)
        }
    }
    
    // MARK: Perform saving Zekr object operation
    func saveZekrObject() {
        self.storeZekrObjectDataIntoPersistentStore { (complete) in
            if complete {
                // Present HomeViewController
                self.presentHomeViewController()
            } else {
                self.presentErrorAlertController()
            }
        }
    }
}
