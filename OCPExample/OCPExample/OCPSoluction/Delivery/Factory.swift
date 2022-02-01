//
//  Factory.swift
//  OCPExample
//
//  Created by Maximiliano Eduardo Ibalborde on 01/02/2022.
//

import Foundation

class Factory {
    static let factory = Factory()

    private let deliveryDictionary: [CountryEnum: IDelivery] = [
        CountryEnum.Colombia: ColombiaDelivery(),
        CountryEnum.Mexico: MexicoDelivery()
    ]
    private init() {}
    
    func Get(country: CountryEnum) -> IDelivery? {
        guard let delivery = deliveryDictionary[country] else { return nil }
        return delivery
    }
}
