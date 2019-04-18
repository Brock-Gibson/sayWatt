//
//  ViewController.swift
//  EnergyTeamBasedApp
//
//  Created by Brock Gibson on 4/4/19.
//  Copyright © 2019 Brock Gibson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var Challenges: Challenges?
    var Tips: Tips?

    override func viewDidLoad() {
        super.viewDidLoad()

        Challenges = JSONLoader.loadChallenges(jsonFileName: "challenges")
        Tips = JSONLoader.loadTips(jsonFileName: "tips")

        if Challenges == nil {
            print("Unable to load and parse challenges.json")
        } else {
            print("challenges.json successfully loaded and parsed.")
        }
        
        if Tips == nil {
            print("Unable to load and parse tips.json")
        } else {
            print("tips successfully loaded and parsed.")
        }
        
        print(Tips)
        print(Challenges)
    }


}

