//
//  Product.swift
//  E-commerce
//
//  Created by 莊雅棋 on 2023/6/20.
//

import Foundation

struct Product : Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var description: String
    var supplier: String
    var price: Int
}

var productList = [
    Product(
        name: "Leather Couch",
        image: "furniture_1",
        description: "",
        supplier: "IKEA",
        price: 350
    ),
    Product(
        name: "Morden Couch",
        image: "furniture_2",
        description: "",
        supplier: "Costco",
        price: 600
    ),
    Product(
        name: "Gray Couch",
        image: "furniture_3",
        description: "",
        supplier: "Costco",
        price: 500
    ),
    Product(
        name: "Good Couch",
        image: "furniture_4",
        description: "",
        supplier: "IKEA",
        price: 380
    ),
    Product(
        name: "Happy Couch",
        image: "furniture_5",
        description: "",
        supplier: "IKEA",
        price: 900
    )

]
