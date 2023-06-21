//
//  ProductCardView.swift
//  E-commerce
//
//  Created by 莊雅棋 on 2023/6/20.
//

import SwiftUI

struct ProductCardView: View {
    @EnvironmentObject var cartManager: CartManager
    var product: Product
    var body: some View {
        ZStack{
            Color("KSecondary")
            
            ZStack(alignment: .bottomTrailing){
                VStack(alignment: .leading){
                    Image(product.image)
                        .resizable()
                        .frame(width: 175, height:  160)
                        .cornerRadius(12)
                    
                    Text(product.name)
                        .font(.headline)
                        .padding(.vertical , 1)
                    
                    Text(product.supplier)
                        .foregroundColor(.gray)
                        .font(.caption)
                        .padding(.vertical, 0.5)
                    
                    Text("$\(product.price)")
                        .bold()
                }
                
                
                Button{
                    cartManager.addToCart(product: product)
                }label:{
                    Image(systemName: "plus.circle.fill")
                        .resizable()
                        .foregroundColor(Color("KPrimary"))
                        .frame(width: 35, height: 35)
                        .padding(.trailing)
                }
            }
        }
        .frame(width: 185, height: 260)
        .cornerRadius(16)
    }
}

struct ProductCardView_Previews: PreviewProvider {
    static var previews: some View {
        ProductCardView(product: productList[0])
            .environmentObject(CartManager())
    }
}
