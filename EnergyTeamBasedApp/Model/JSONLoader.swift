//
//  JSONLoader.swift
//  EnergyTeamBasedApp
//
//  Created by Brock Gibson on 4/5/19.
//  Copyright © 2019 Brock Gibson. All rights reserved.
//

import Foundation

class JSONLoader {
    
    class func loadTips(jsonFileName: String) -> Tips? {
        var tipList: Tips?
        let jsonDecoder = JSONDecoder()
        jsonDecoder.dateDecodingStrategy = .iso8601
        
        if let jsonFileUrl = Bundle.main.url(forResource: jsonFileName, withExtension: ".json"),
            let jsonData = try? Data(contentsOf: jsonFileUrl) {
            tipList = try? jsonDecoder.decode(Tips.self, from: jsonData)
        }
        
        return tipList
    }
    
    class func loadChallenges(jsonFileName: String) -> Challenges? {
        var challengeList: Challenges?
        let jsonDecoder = JSONDecoder()
        jsonDecoder.dateDecodingStrategy = .iso8601
        
        if let jsonFileUrl = Bundle.main.url(forResource: jsonFileName, withExtension: ".json"),
            let jsonData = try? Data(contentsOf: jsonFileUrl) {
            challengeList = try? jsonDecoder.decode(Challenges.self, from: jsonData)
        }
        
        return challengeList
    }
}
