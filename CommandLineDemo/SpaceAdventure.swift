//
//  SpaceAdventure.swift
//  SwiftPracticeOne
//
//  Created by AdBox on 5/23/17.
//  Copyright © 2017 AdBox. All rights reserved.
//

import Foundation

class SpaceAdventure {

    let planetarySystem :PlanetarySystem
    
    init(planetarySystem :PlanetarySystem) {
        self.planetarySystem = planetarySystem
    }
    
    private func DisplayDescription() {
    
        print("Welcome to the \(planetarySystem.name)!")
        print("We have \(planetarySystem.planets.count) planets to explore")
    }
    
    private func responseToPromt(prompt :String) -> String{
    
        print(">>> \(prompt)")
        return getUserInput()
    }

    private func greatAdventurer() {
    
        let name = responseToPromt(prompt: "What is your name")
        print("Nice to meet you \(name). I am Eliza, old friend of Siri :)")
    }
    
    private func visit(to name :String) {
    
        print("Travelling to \(name)")
        
        for planet in planetarySystem.planets {
            if planet.name == name {
                print("Arrived at \(planet.name) - \(planet.description)")
            }
        }
    }
    
    private func isPlanetAvailable(toOurSystem name :String) -> Bool {
    
        for planet in planetarySystem.planets {
            if planet.name == name {
                return true
            }
        }
        
        return false
    }
    
    private func determineDestinatio() {
    
        var decision = ""
        
        while !(decision == "Y" || decision == "N") {
            
            if decision != "W" {
                decision = responseToPromt(prompt: "Shall I choose a planet randomly? (Y or N)")
            }
            
            if decision == "Y" {
            
                if let planet = planetarySystem.randomPlanet {
                
                    visit(to: planet.name)
                }
                else {
                
                    print("Sorry, there are no planets in this system")
                }
            }
            else if decision == "N" || decision == "W" {
                
                let planetName = responseToPromt(prompt: "Write the name you would like to vist.")
                
                if isPlanetAvailable(toOurSystem: planetName) {
                    visit(to: planetName)
                    decision = "N"
                }
                else {

                    decision = "W"
                    print("Sorry, \(planetName) is not available in our system.")
                }
            }
            else {
                
                print("Sorry, i did not get that")
            }
        }
    }
    
    func start() {
    
        DisplayDescription()
        greatAdventurer()
        
        if !planetarySystem.planets.isEmpty {
        
            print("Lets go for an adventure")
            determineDestinatio()
        }
    }
}
