//
//  SectionedContactsApp.swift
//  SectionedContacts
//
//  Created by Ganesh on 21/05/23.
//

import SwiftUI

@main
struct SectionedContactsApp: App {
    let coreDataStack = CoreDataStack(modelName: "ContactsModel")
    
    @Environment(\.scenePhase) var scenePhases
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, coreDataStack.managedObjectContext)
                .onAppear{
                    addContacts(to: coreDataStack)
                }
        }
        .onChange(of: scenePhases) { _ in
            coreDataStack.save()
        }
    }
}
