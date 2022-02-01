//
//  ViewController.swift
//  LSPExample
//
//  Created by Maximiliano Eduardo Ibalborde on 01/02/2022.
//

import UIKit

class ViewController: UIViewController {
    let initialDistance: Double = 10000

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let truck: Truck = SpecializedTruck(plateNumber: "ABC123",
                                 odometer: initialDistance)
        
        truck.addTrip(newTrip: Trip(originLatitude: 0,
                                    originLongitude: 0,
                                    destinationLatitude: 0, destinationLongitude: 0,
                                    distance: 60))
        if truck.odometer == initialDistance {
            print("Odometer is correct")
        } else {
            print("Odometer has been modified")
        }
    }


}

