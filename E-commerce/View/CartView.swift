//
//  CartView.swift
//  E-commerce
//
//  Created by 莊雅棋 on 2023/6/21.
//

import SwiftUI

struct CartView: View {
    @EnvironmentObject var cartManager: CartManager
    var body: some View {
        ScrollView{
            if cartManager.products.count > 0{
                ForEach(cartManager.products, id: \.id){product in
                    CartProductView(product: product)
                }
                
                HStack{
                    Text("Your Total is")
                    Spacer()
                    Text("$\(cartManager.total).00")
                        .bold()
                    
                }
                .padding()
                PaymentButton(action: {})
                    .padding()
            }else{
                Text("Your cart is empty")
            }
        }
        .navigationTitle(Text("My Cart"))
        .padding(.top)
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
            .environmentObject(CartManager())
    }
}
