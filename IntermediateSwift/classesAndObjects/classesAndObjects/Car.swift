//
//  Car.swift
//  classesAndObjects
//
//  Created by Ricky Torrez on 3/3/18.
//  Copyright © 2018 E. Ricardo Torrez. All rights reserved.
//

import Foundation

enum CarType {
    case Sedan
    case Coupe
    case Hatchback
}

// Class names should allways be capitalized
class Car {
    
    var color = "Black"
    var numberOfSeats = 5
    var typeOfCar : CarType = .Coupe
    
}
