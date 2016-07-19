//
//  Car.swift
//  swift-vehicle-lab
//
//  Created by Flatiron School on 7/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Car: Vehicle {
    var transmission: String
    var cylinders: Int
    var milesPerGallon: Double
    
    init(name:String, weight: Double, maxSpeed: Double, transmission: String, cylinders: Int, milesPerGallon: Double) {
        self.cylinders = cylinders
        self.transmission = transmission
        self.milesPerGallon = milesPerGallon
        super.init(name: name, weight: weight, maxSpeed: maxSpeed)
    }
    
    func drive() {
        super.accelerate()
    }
    
    func brake() {
        super.decelerate()
    }
}


