//
//  IDelivery.swift
//  OCPExample
//
//  Created by Maximiliano Eduardo Ibalborde on 01/02/2022.
//

import Foundation

protocol IDelivery {
    func CalculateCost(order: Order) -> Double
}
