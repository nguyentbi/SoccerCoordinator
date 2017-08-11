//: Playground - noun: a place where people can play

import Foundation
import UIKit

var str = "Hello, playground"



let player1: [String: Any] = ["name": "Joe Smith",
                              "height": 42,
                              "soccerExperience": true,
                              "guardianName": "Jim and Jan Smith"
]
let player2: [String: Any] = ["name": "Jill Tanner",
                              "height": 36,
                              "soccerExperience": true,
                              "guardianName": "Clara Tanner"
]
let player3: [String: Any] = ["name": "Bill Bon",
                              "height": 43,
                              "soccerExperience": true,
                              "guardianName": "Sara and Jenny Bon"
]
let player4: [String: Any] = ["name": "Eva Gordon",
                              "height": 45,
                              "soccerExperience": false,
                              "guardianName": "Wendy and Mike Gordon"
]
let player5: [String: Any] = ["name": "Matt Gill",
                              "height": 40,
                              "soccerExperience": false,
                              "guardianName": "Charles and Sylvia Gill"
]
let player6: [String: Any] = ["name": "Kimmy Stein",
                              "height": 41,
                              "soccerExperience": false,
                              "guardianName": "Bill and Hillary Stein"
]
let player7: [String: Any] = ["name": "Sammy Adams",
                              "height": 45,
                              "soccerExperience": false,
                              "guardianName": "Jeff Adams"
]
let player8: [String: Any] = ["name": "Karl Saygan",
                              "height": 42,
                              "soccerExperience": true,
                              "guardianName": "Heather Bledsoe"
]
let player9: [String: Any] = ["name": "Suzane Greenberg",
                              "height": 44,
                              "soccerExperience": true,
                              "guardianName": "Henrietta Dumas"
]
let player10: [String: Any] = ["name": "Sal Dali",
                               "height": 41,
                               "soccerExperience": false,
                               "guardianName": "Gala Dali"
]
let player11: [String: Any] = ["name": "Joe Kavalier",
                               "height": 39,
                               "soccerExperience": false,
                               "guardianName": "Sam and Elaine Kavalier"
]
let player12: [String: Any] = ["name": "Ben Finkelstein",
                               "height": 44,
                               "soccerExperience": false,
                               "guardianName": "Aaron and Jill Finkelstein"
]
let player13: [String: Any] = ["name": "Diego Soto",
                               "height": 41,
                               "soccerExperience": true,
                               "guardianName": "Robin and Sarika Soto"
]
let player14: [String: Any] = ["name": "Chloe Alaska",
                               "height": 47,
                               "soccerExperience": false,
                               "guardianName": "David and Jamie Alaska"
]
let player15: [String: Any] = ["name": "Arnold Willis",
                               "height": 43,
                               "soccerExperience": false,
                               "guardianName": "Claire Willi"
]
let player16: [String: Any] = ["name": "Phillip Helm",
                               "height": 44,
                               "soccerExperience": true,
                               "guardianName": "Thomas Helm and Eva Jones"
]
let player17: [String: Any] = ["name": "Les Clay",
                               "height": 42,
                               "soccerExperience": true,
                               "guardianName": "Wynonna Brown"]

let player18: [String: Any] = ["name": "Herschel Krustofsk",
                               "height": 45,
                               "soccerExperience": true,
                               "guardianName": "Hyman and Rachel Krustofski"
]



let players = [player1, player2, player3, player4, player5, player6, player7, player8, player9, player10, player11, player12, player13, player14, player15, player16, player17, player18]




// Adds players into corresponding array based on experience

var experiencePlayers: [[String: Any]] = []
var inExperiencePlayers: [[String: Any]] = []

for player in players {
    
    guard let soccerExperience = player["soccerExperience"] as? Bool else {
        break
    }
    
    if soccerExperience {
        experiencePlayers.append(player)
    } else {
        inExperiencePlayers.append(player)
    }
}



// place each player on a team

var teamSharks: [[String: Any]] = []
var teamDragons: [[String: Any]] = []
var teamRaptors: [[String: Any]] = []

for player in experiencePlayers {
    if teamSharks.count <= teamRaptors.count {
        teamSharks.append(player)
    } else if teamDragons.count <= teamRaptors.count {
        teamDragons.append(player)
    } else if teamRaptors.count <= teamSharks.count {
        teamRaptors.append(player)
    }
}

for player in inExperiencePlayers {
    if teamSharks.count <= teamRaptors.count {
        teamSharks.append(player)
    } else if teamDragons.count <= teamRaptors.count {
        teamDragons.append(player)
    } else if teamRaptors.count <= teamSharks.count {
        teamRaptors.append(player)
    }
}



// write letters to each of player guardian

var letters: [String] = []

var sharksFirstPractice: String = "March 17, 3pm"
var DragonssFirstPractice: String = "March 17, 1pm"
var RaptorsFirstPractice: String = "March 18, 1pm"

for player in teamSharks {
    if let name = player["name"], let guardianName = player["guardianName"] {
        var letter = "Dear \(guardianName), your child, \(name) has been assigned team Sharks and their first practice is on \(sharksFirstPractice)."
        letters.append(letter)
    } else {
        break
    }
}

for player in teamDragons {
    if let name = player["name"], let guardianName = player["guardianName"] {
        var letter = "Dear \(guardianName), your child, \(name) has been assigned team Dragons and their first practice is on \(sharksFirstPractice)."
        letters.append(letter)
    } else {
        break
    }
}

for player in teamRaptors {
    if let name = player["name"], let guardianName = player["guardianName"] {
        var letter = "Dear \(guardianName), your child, \(name) has been assigned team Raptors and their first practice is on \(sharksFirstPractice)."
        letters.append(letter)
    } else {
        break
    }
}

for letter in letters {
    print(letter)
}



