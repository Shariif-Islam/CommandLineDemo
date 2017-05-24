//
//  PlanetarySystem.swift
//  SwiftPracticeOne
//
//  Created by AdBox on 5/23/17.
//  Copyright © 2017 AdBox. All rights reserved.
//

import Foundation

class PlanetarySystem {

    let name :String
    let planets :[Planet]
    
    var randomPlanet :Planet? {
    
        if planets.isEmpty {
            return nil
        }
        else {
            let index = Int(arc4random_uniform(UInt32(planets.count)))
            return planets[index]
        }
    }
    
    init(name :String, planets :[Planet]) {
        self.name = name
        self.planets = planets
    }
}
