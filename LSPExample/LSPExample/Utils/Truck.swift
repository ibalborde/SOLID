//
//  Truck.swift
//  LSPExample
//
//  Created by Maximiliano Eduardo Ibalborde on 01/02/2022.
//

import Foundation

class Truck {
    let plateNumber: String
    var odometer: Double
    var trips: [Trip]
    
    init(plateNumber: String,
         odometer: Double) {
        self.plateNumber = plateNumber
        self.odometer = odometer
        self.trips = []
    }

    func addTrip(newTrip: Trip) {
        trips.append(newTrip)
    }
}
