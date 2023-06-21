//
//  ProductsView.swift
//  E-commerce
//
//  Created by 莊雅棋 on 2023/6/21.
//

import SwiftUI

struct ProductsView: View {
    @EnvironmentObject var cartManager: CartManager
    
    var coloum = [GridItem(.adaptive(minimum: 160), spacing: 20)]
    var body: some View {
        NavigationView {
            ScrollView{
                LazyVGrid(columns: coloum, spacing: 20){
                    ForEach(productList, id: \.id){product in
                        ProductCardView(product: product)
                    }
                }
                .padding()
            }
           
        }
    }
}

struct ProductsView_Previews: PreviewProvider {
    static var previews: some View {
        ProductsView()
            .environmentObject(CartManager())
    }
}
