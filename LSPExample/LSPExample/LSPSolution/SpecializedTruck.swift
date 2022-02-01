//
//  SpecializedTruck.swift
//  LSPExample
//
//  Created by Maximiliano Eduardo Ibalborde on 01/02/2022.
//

import Foundation

class SpecializedTruck: Truck {
    
    override func addTrip(newTrip: Trip) {
        super.addTrip(newTrip: newTrip)
        
        trips.forEach { trip in
            self.odometer += trip.distance
        }
    }
}
