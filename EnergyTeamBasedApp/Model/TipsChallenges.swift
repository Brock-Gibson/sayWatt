//
//  Tip.swift
//  EnergyTeamBasedApp
//
//  Created by Brock Gibson on 4/4/19.
//  Copyright © 2019 Brock Gibson. All rights reserved.
//

import Foundation

struct Tip: Codable {
    var description: String
    var category: EnergyType
}

struct Challenge: Codable {
    var description: String
    var category: EnergyType
    var difficulty: Int
}

struct Tips: Codable {
    var status: String
    var tips: [Tip]
}

struct Challenges: Codable {
    var status: String
    var challenges: [Challenge]
}

enum EnergyType: String, Codable {
    case water
    case gas
    case energy
    case lifestyle
}

enum Difficulty: String, Codable {
    case beginner = "Sprout"
    case intermediate = "Sapling"
    case advanced = "ExoExtremist"
}
