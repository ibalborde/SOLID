//
//  StoreSoluction.swift
//  OCPExample
//
//  Created by Maximiliano Eduardo Ibalborde on 01/02/2022.
//

import Foundation
import UIKit

class StoreSoluction: UIViewController {
    func CalculateDeliveryCost(order: Order?) -> Double{
        guard let order = order,
              let delivery: IDelivery = Factory.factory.Get(country: order.country)
        else { return -1 }
        
        return delivery.CalculateCost(order: order)
    }
}
