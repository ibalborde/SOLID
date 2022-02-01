//
//  SolutionViewController.swift
//  SolidExamples
//
//  Created by Maximiliano Eduardo Ibalborde on 01/02/2022.
//

import Foundation
import UIKit

class SolutionViewController: UIViewController{
    let repository = ProductRepository()

    override func viewDidLoad() {
        super.viewDidLoad()
        repository.createTable()
    }

    func calculateProductTax(product: Product?) -> Double {
        /// validate product
        guard let product = product else { return 0 }
        let tax = 0.19
        let productTax = product.price * tax
        return productTax
    }

    func saveProduct(newProduct: Product?) {
        /// validate product
        guard let product = newProduct, product.id > 0, !product.name.isEmpty else { return }
        repository.saveProduct(newProduct: newProduct)
    }

    func listProducts() {
        repository.listProducts()
    }
}
