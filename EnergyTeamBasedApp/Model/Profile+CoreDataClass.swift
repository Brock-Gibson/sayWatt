//
//  Profile+CoreDataClass.swift
//  EnergyTeamBasedApp
//
//  Created by Brock Gibson on 4/11/19.
//  Copyright © 2019 Brock Gibson. All rights reserved.
//
//

import Foundation
import CoreData
import UIKit

@objc(Profile)
public class Profile: NSManagedObject {
    var EnergyBills: [EnergyBill]? {
        return self.rawEnergyBills?.array as? [EnergyBill]
    }
    
    var date: Date? {
        get {
            return birthday as Date?
        }
        set {
            birthday = newValue as NSDate?
        }
    }
    
    var image: UIImage? {
        get {
            if let imageData = profilePic as Data? {
                return UIImage(data: imageData)
            }
            return nil
        }
        set {
            let imageData = newValue!.pngData() as NSData?
            profilePic = imageData
        }
    }
    
    convenience init?(firstName: String, lastName: String, birthday: Date, image: UIImage, email: String) {
        let appDelegate = UIApplication.shared.delegate as? AppDelegate
        guard let context = appDelegate?.persistentContainer.viewContext else {
            return nil
        }
        
        self.init(entity: Profile.entity(), insertInto: context)
        
        self.firstName = firstName
        self.date = birthday
        self.lastName = lastName
        self.image = image
    }
}
