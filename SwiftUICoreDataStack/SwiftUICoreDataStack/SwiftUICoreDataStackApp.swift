//
//  SwiftUICoreDataStackApp.swift
//  SwiftUICoreDataStack
//
//  Created by Ganesh on 20/05/23.
//

import SwiftUI

@main
struct SwiftUICoreDataStackApp: App {
    let persistenceController = PersistenceController.shared
    private let coreDataStack = CoreDataStack(modelName: "ContactsModel")
    @Environment(\.scenePhase) var scenePhase
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, coreDataStack.managedObjectContext)
        }
        .onChange(of: scenePhase) { _ in
            coreDataStack.save()
        }
    }
}
