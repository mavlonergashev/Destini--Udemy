//
//  StoryBrain.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation
import UIKit

struct StoryBrain {
    let stories = [
        Story(title: "You see a fork in the road", choice1: "Take a left", choice2: "Take a right"),
        Story(title: "You see a tiger", choice1: "Shout for help", choice2: "Play dead"),
        Story(title: "You find a trousure chest", choice1: "Open it", choice2: "Check for traps")
    ]
    
    var choiceCount = 0
    
    func getStory() -> String {
        return stories[choiceCount].title
    }
    
    func getChoice1() -> String {
        return stories[choiceCount].choice1
    }
    
    func getChoice2() -> String {
        return stories[choiceCount].choice2
    }
    
    mutating func nextStory(choice: String) {
        if choiceCount == 0 {
            switch choice {
            case "Take a left":
                choiceCount = 1
            default:
                choiceCount = 2
            }
        } else {
            choiceCount = 0
        }
    }
    
}
