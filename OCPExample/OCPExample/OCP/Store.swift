//
//  Store.swift
//  OCPExample
//
//  Created by Maximiliano Eduardo Ibalborde on 01/02/2022.
//

import UIKit

class Store: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func calculateDeliveryCost(order: Order?) -> Double {
        guard let order = order else { return 0 }
        var result: Double = 0
        
        switch order.country {
            case CountryEnum.Colombia:
                result = order.total * 0.01
                if order.weight <= 2 {
                    result += 9900
                } else {
                    result += order.weight * 5000
                }
            case CountryEnum.Mexico:
                result = 98
        }
        return result
    }
}

