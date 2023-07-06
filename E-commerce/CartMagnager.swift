//
//  CartMagnager.swift
//  E-commerce
//
//  Created by 莊雅棋 on 2023/6/26.
//

import Foundation

class CartManager: ObservableObject{
    @Published private(set) var products: [Product] = []
    @Published private(set) var total: Int = 0
    
    func addToCart(product: Product){
        products.append(product)
        total += product.price
    }
    
    func removeFromCart(product: Product){
        products = products.filter{ $0.id != product.id }
        total -= product.price
    }

}
