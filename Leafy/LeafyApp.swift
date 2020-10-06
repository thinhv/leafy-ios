//
//  LeafyApp.swift
//  Leafy
//
//  Created by Thinh Vo on 6.10.2020.
//

import SwiftUI

@main
struct LeafyApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
