//
//  Jet.swift
//  swift-vehicle-lab
//
//  Created by Flatiron School on 7/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Jet: Plane {
    
//    init(name: String, weight: Double, maxSpeed: Double, maxAltitude: Double) {
//        super.init(name: name, weight: weight, maxSpeed: maxSpeed, maxAltitude: maxAltitude)
//    }
    
    override func climb() {
        if self.inFlight {
            self.decelerate()
            if self.speed < 0.0 {
                self.speed = 0.0
            }
            self.altitude += self.maxAltitude / 5
            if self.altitude > self.maxAltitude {
                self.altitude = self.maxAltitude
            }
        }
    }
    
    override func dive() {
        if self.altitude > 0.0 {
            self.altitude -= self.maxAltitude / 5
            if self.altitude < 0.0 {
                self.altitude = 0.0
            }
            self.accelerate()
            if self.speed > self.maxSpeed {
                self.speed = self.maxSpeed
            }
        }
    }
    
    func afterburner() {
        if self.inFlight && self.speed == self.maxSpeed {
            self.speed = self.speed * 2
        }
        
    }
    
}

