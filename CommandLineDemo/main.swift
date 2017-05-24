//
//  main.swift
//  CommandLineDemo
//
//  Created by AdBox on 5/24/17.
//  Copyright © 2017 myth. All rights reserved.
//

import Foundation

let systemName = "Solar System"
let planetData = [
    "Mercury" : "A very hot planet, closest to the sun.",
    "Venus" : "Its very cloudy here!",
    "Earth" : "There is something very familiar about this planet.",
    "Mars" : "Known as Red planet.",
    "Jupiter" : "A gas giant, with a noticable red spot.",
    "Saturn" : "This planet has beautiful ring around it.",
    "Uranus" : "Strangely, this planet roates around on its side.",
    "Neptune" : "A very cold planet, furthest from the sun."
]

let planets = planetData.map { name, description in Planet(name: name, description: description) }

let planetarySystem = PlanetarySystem(name: systemName, planets: planets)

let adventure = SpaceAdventure(planetarySystem: planetarySystem)
adventure.start()
