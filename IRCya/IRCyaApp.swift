//
//  IRCyaApp.swift
//  IRCya
//
//  Created by Michael Eisemann on 12/15/22.
//

import SwiftUI

@main
struct IRCyaApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
