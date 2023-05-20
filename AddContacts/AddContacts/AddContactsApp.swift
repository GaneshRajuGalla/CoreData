//
//  AddContactsApp.swift
//  AddContacts
//
//  Created by Ganesh on 20/05/23.
//

import SwiftUI

@main
struct AddContactsApp: App {
    let persistenceController = PersistenceController.shared
    private var coreDataStack = CoreDataStack(modelName: "ContactsModel")
    @Environment(\.scenePhase) var scenePhases
    var body: some Scene {
        WindowGroup {
            ContentView(coreDataStack: coreDataStack)
                .environment(\.managedObjectContext, coreDataStack.managedObjectContext)
                .onChange(of: scenePhases) { _ in
                    coreDataStack.save()
                }
        }
    }
}
