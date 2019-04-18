//
//  Profile+CoreDataProperties.swift
//  EnergyTeamBasedApp
//
//  Created by Brock Gibson on 4/11/19.
//  Copyright © 2019 Brock Gibson. All rights reserved.
//
//

import Foundation
import CoreData


extension Profile {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Profile> {
        return NSFetchRequest<Profile>(entityName: "Profile")
    }

    @NSManaged public var profilePic: NSData?
    @NSManaged public var firstName: String?
    @NSManaged public var lastName: String?
    @NSManaged public var birthday: NSDate?
    @NSManaged public var rawEnergyBills: NSOrderedSet?

}

// MARK: Generated accessors for rawEnergyBills
extension Profile {

    @objc(insertObject:inRawEnergyBillsAtIndex:)
    @NSManaged public func insertIntoRawEnergyBills(_ value: EnergyBill, at idx: Int)

    @objc(removeObjectFromRawEnergyBillsAtIndex:)
    @NSManaged public func removeFromRawEnergyBills(at idx: Int)

    @objc(insertRawEnergyBills:atIndexes:)
    @NSManaged public func insertIntoRawEnergyBills(_ values: [EnergyBill], at indexes: NSIndexSet)

    @objc(removeRawEnergyBillsAtIndexes:)
    @NSManaged public func removeFromRawEnergyBills(at indexes: NSIndexSet)

    @objc(replaceObjectInRawEnergyBillsAtIndex:withObject:)
    @NSManaged public func replaceRawEnergyBills(at idx: Int, with value: EnergyBill)

    @objc(replaceRawEnergyBillsAtIndexes:withRawEnergyBills:)
    @NSManaged public func replaceRawEnergyBills(at indexes: NSIndexSet, with values: [EnergyBill])

    @objc(addRawEnergyBillsObject:)
    @NSManaged public func addToRawEnergyBills(_ value: EnergyBill)

    @objc(removeRawEnergyBillsObject:)
    @NSManaged public func removeFromRawEnergyBills(_ value: EnergyBill)

    @objc(addRawEnergyBills:)
    @NSManaged public func addToRawEnergyBills(_ values: NSOrderedSet)

    @objc(removeRawEnergyBills:)
    @NSManaged public func removeFromRawEnergyBills(_ values: NSOrderedSet)

}
