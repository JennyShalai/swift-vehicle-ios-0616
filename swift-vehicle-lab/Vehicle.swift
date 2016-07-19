//
//  Vehicle.swift
//  swift-vehicle-lab
//
//  Created by Flatiron School on 7/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Vehicle {

    let name: String
    let weight: Double
    let maxSpeed: Double
    var speed: Double = 0.0
    var heading: Double = 0.0
    
    init(name: String, weight: Double, maxSpeed: Double) {
        self.name = name
        self.weight = weight
        self.maxSpeed = maxSpeed
    }
    
    func goFast() {
        self.speed = self.maxSpeed
    }
    
    func halt() {
        self.speed = 0.0
    }
    
    func accelerate() {
        self.speed += self.maxSpeed / 10
        if self.speed > self.maxSpeed {
            self.speed = self.maxSpeed
        }
    }
    
    func decelerate() {
        self.speed -= self.maxSpeed / 10
        if self.speed < 0.0 {
            self.speed = 0.0
        }
    }
    
    func turnRight() {
        if self.speed > 0.0 {
            self.heading += 90.0
            if self.heading >= 360.0 {
                self.heading -= 360
            }
            self.speed = self.speed / 2
        }
    }
    
    func turnLeft() {
        if self.speed > 0 {
            self.heading -= 90.0
            if self.heading <= 0.0 {
                self.heading += 360
            }
            self.speed = self.speed / 2
        }
    }
    
}

