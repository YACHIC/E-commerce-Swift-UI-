//
//  E_commerceApp.swift
//  E-commerce
//
//  Created by 莊雅棋 on 2023/6/20.
//

import SwiftUI

@main
struct E_commerceApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
