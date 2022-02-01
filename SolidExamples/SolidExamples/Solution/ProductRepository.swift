//
//  ProductRepository.swift
//  SolidExamples
//
//  Created by Maximiliano Eduardo Ibalborde on 01/02/2022.
//

import Foundation
import UIKit
import SQLite

class ProductRepository: UIViewController {
    var database: Connection!
    
    let productsTable = Table("products")
    let id = Expression<Int>("id")
    let name = Expression<String>("name")
    let price = Expression<Double>("price")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    func createTable() {
        
        do {
            let documentDirectory = try FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
            let fileUrl = documentDirectory.appendingPathComponent("products").appendingPathExtension("sqlite3")
            let database = try Connection(fileUrl.path)
            self.database = database
        } catch {
            print(error)
        }

        let createTable = self.productsTable.create { table in
            table.column(self.id, primaryKey: true)
            table.column(self.name)
            table.column(self.price)
        }
        do {
            try self.database.run(createTable)
            print("Created table")
        } catch {
            print(error)
        }
    }

    func saveProduct(newProduct: Product?) {
        /// validate product
        guard let product = newProduct, product.id > 0, !product.name.isEmpty else { return }
        let insertProduct = self.productsTable.insert(self.name <- product.name, self.price <- product.price)
        do {
            try self.database.run(insertProduct)
            print("inserted product")
        } catch {
            print(error)
        }
    }

    func listProducts() {
        do {
            let products = try database.prepare(self.productsTable)
            for product in products {
                print("productId: \(product[self.id]), productName: \(product[self.name]), productPrice: \(product[self.price])")
            }
        } catch {
            print(error)
        }
    }
}
