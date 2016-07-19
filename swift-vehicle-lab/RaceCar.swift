//
//  RaceCar.swift
//  swift-vehicle-lab
//
//  Created by Flatiron School on 7/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class RaceCar: Car {
    let driver: String
    var sponsors: [String]
    
    init(name:String, weight: Double, maxSpeed: Double, transmission: String, cylinders: Int, milesPerGallon: Double, driver: String, sponsors: [String]) {
        self.driver = driver
        self.sponsors = sponsors
        super.init(name: name, weight: weight, maxSpeed: maxSpeed, transmission: transmission, cylinders: cylinders, milesPerGallon: milesPerGallon)
    }
    
    override func accelerate() {
        self.speed += self.maxSpeed / 5
        if self.speed > self.maxSpeed {
            self.speed = self.maxSpeed
        }
    }
    
    override func decelerate() {
        self.speed -= self.maxSpeed / 5
        if self.speed < 0.0 {
            self.speed = 0.0
        }
    }
    
    func driftRight() {
        if self.speed > 0.0 {
            self.speed -= self.speed / 4
            if self.speed < 0.0 {
                self.speed = 0.0
            }
            self.heading += 90.0
            if self.heading >= 360.0 {
                self.heading -= 360.0
            }
        }
    }
    
    func driftLeft() {
        if self.speed > 0.0 {
            self.heading -= 90.0
            if self.heading <= 0.0 {
                self.heading += 360.0
            }
            self.speed -= self.speed / 4
            if self.speed < 0.0 {
                self.speed = 0.0
            }
        }
    }
    
    
    
}


