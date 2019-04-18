//
//  EnergyBill+CoreDataProperties.swift
//  EnergyTeamBasedApp
//
//  Created by Brock Gibson on 4/11/19.
//  Copyright © 2019 Brock Gibson. All rights reserved.
//
//

import Foundation
import CoreData


extension EnergyBill {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<EnergyBill> {
        return NSFetchRequest<EnergyBill>(entityName: "EnergyBill")
    }

    @NSManaged public var amount: Double
    @NSManaged public var billDate: NSDate?
    @NSManaged public var desc: String?
    @NSManaged public var profile: Profile?

}
