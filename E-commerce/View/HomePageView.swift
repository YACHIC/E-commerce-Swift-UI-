//
//  HomePageView.swift
//  E-commerce
//
//  Created by 莊雅棋 on 2023/6/21.
//

import SwiftUI

struct HomePageView: View {
    @EnvironmentObject var cartManager: CartManager
    var body: some View {
        NavigationStack {
            ZStack(alignment: .top){
                Color.white
                    .edgesIgnoringSafeArea(.all)
                
                VStack{
                    AppBar()
                    SearchView()
                    ImageSliderView()
                    
                    HStack{
                        Text("New Rivals")
                            .font(.title2)
                            .fontWeight(.medium)
                        Spacer()
                        
                        NavigationLink(destination: {
                            ProductsView()
                        }, label: {
                            Image(systemName: "circle.grid.2x2.fill")
                                .foregroundColor(Color("KPrimary"))
                        })
                    }
                    .padding()
                    
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack(spacing: 10){
                            ForEach(productList, id: \.id){product in
                                NavigationLink{
                                    ProductDetailsView(product: product)
                                } label:{
                                    ProductCardView(product: product)
                                        .environmentObject(cartManager)
                                }
                            }
                        }
                        .padding(.horizontal)
                    }

                }
            }
        }
        .environmentObject(cartManager)
    }
}

struct HomePageView_Previews: PreviewProvider {
    static var previews: some View {
        HomePageView()
            .environmentObject(CartManager())
    }
}

struct AppBar: View {
    @EnvironmentObject var cartManager: CartManager
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading) {
                HStack{
                    Image(systemName: "location.north.fill")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .padding(.trailing)
                    
                    Text("Taichung, Taiwan")
                        .font(.title2)
                        .foregroundColor(.gray)
                    
                    Spacer()
                    
                    NavigationLink(destination: CartView()
                        .environmentObject(cartManager)
                    
                    ){
                        CartButton(numberOfProducts: cartManager.products.count)
                    }
                    
                }
                Text("Find The Most \nLuxurios")
                    .font(.largeTitle .bold())
                    
                + Text(" Furniture")
                    .font(.largeTitle .bold())
                    .foregroundColor(Color("KPrimary"))
            }
        }
        .padding()
        .environmentObject(CartManager())
    }
}
