//
//  EnergyBill+CoreDataClass.swift
//  EnergyTeamBasedApp
//
//  Created by Brock Gibson on 4/11/19.
//  Copyright © 2019 Brock Gibson. All rights reserved.
//
//

import Foundation
import CoreData
import UIKit

@objc(EnergyBill)
public class EnergyBill: NSManagedObject {
    
    var date: Date? {
        get {
            return billDate as Date?
        }
        set {
            billDate = newValue as NSDate?
        }
    }
    
    convenience init?(amount: Double, date: Date, desc: String?) {
        let appDelegate  = UIApplication.shared.delegate as? AppDelegate
        guard let managedContext = appDelegate?.persistentContainer.viewContext else {
            return nil
        }
        
        self.init(entity: EnergyBill.entity(), insertInto: managedContext)
        
        self.desc = desc
        self.amount = Double(amount)
        self.date = date
    }
}
