//
//  Plane.swift
//  swift-vehicle-lab
//
//  Created by Flatiron School on 7/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Plane: Vehicle {
    let maxAltitude: Double
    var altitude: Double = 0.0
    var inFlight: Bool { return self.getInFlight() }
    
    init(name: String, weight: Double, maxSpeed: Double, maxAltitude: Double) {
        self.maxAltitude = maxAltitude
        super.init(name: name, weight: weight, maxSpeed: maxSpeed)
    }
    
    private func getInFlight() -> Bool{
        return self.altitude > 0.0 && self.speed > 0.0
    }
    
    func takeoff() {
        if !self.inFlight {
            self.speed = self.maxSpeed / 10
            self.altitude = self.maxAltitude / 10
        }
    }
    
    func land() {
        self.speed = 0.0
        self.altitude = 0.0
    }
    
    func climb() {
        if self.inFlight {
            self.decelerate()
            if self.speed < 0.0 {
                self.speed = 0.0
            }
            self.altitude += self.maxAltitude / 10
            if self.altitude > self.maxAltitude {
                self.altitude = self.maxAltitude
            }
        }
    }
    
    func dive() {
        if self.altitude > 0.0 {
            self.altitude -= self.maxAltitude / 10
            if self.altitude < 0.0 {
                self.altitude = 0.0
            }
            self.accelerate()
            if self.speed > self.maxSpeed {
                self.speed = self.maxSpeed
            }
        }
    }
    
    func bankRight() {
        if self.inFlight {
            self.heading += 45.0
            if self.heading >= 360.0 {
                self.heading -= 360.0
            }
            self.speed -= self.speed / 10
            if self.speed < 0.0 {
                self.speed = 0.0
            }
        }
    }
    
    func bankLeft() {
        if self.inFlight {
            self.heading -= 45.0
            if self.heading <= 0.0 {
                self.heading += 360.0
            }
            self.speed -= self.speed / 10
            if self.speed > self.maxSpeed {
                self.speed = self.maxSpeed
            }
        }
    }
    
}


