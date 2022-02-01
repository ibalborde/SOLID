//
//  ColombiaDelivery.swift
//  OCPExample
//
//  Created by Maximiliano Eduardo Ibalborde on 01/02/2022.
//

import Foundation

class ColombiaDelivery: IDelivery {
    func CalculateCost(order: Order) -> Double {
        var result: Double = order.total * 0.01
        if order.weight <= 2 {
            result += 9900
        } else {
            result += order.weight * 5000
        }
        return result
    }
}
