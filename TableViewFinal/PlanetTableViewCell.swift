//
//  PlanetTableViewCell.swift
//  TableViewFinal
//
//  Created by James Campagno on 6/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class PlanetTableViewCell: UITableViewCell {
    @IBOutlet weak var planetNameLabel: UILabel!
    @IBOutlet weak var numberOfMoonsLabel: UILabel!
    @IBOutlet weak var numberOfDaysFullOrbitLabel: UILabel!
    @IBOutlet weak var numberOfFacts: UILabel!
    
    var planet : Planet? {
        didSet {
            if let p = planet
            {
                planetNameLabel.text = p.name;
                
                var moonText = String(p.numberOfMoons)
                if (p.numberOfMoons == 1) {
                    moonText += " Moon"
                }
                else {
                    moonText += " Moons"
                }
                
                numberOfMoonsLabel.text = moonText
                
                
                numberOfDaysFullOrbitLabel.text = String(p.fullOrbit) + " days (full orbit)"
                
                var factText = String(p.facts.count)
                if (p.facts.count == 1) {
                    factText += " fact"
                }
                else {
                    factText += " facts"
                }
                
                numberOfFacts.text = factText
            }
            
        }
    }
}
