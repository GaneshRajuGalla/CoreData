//
//  ContentView.swift
//  SwiftUICoreDataStack
//
//  Created by Ganesh on 20/05/23.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @Environment(\.managedObjectContext)  var managedObjectContext
    var body: some View {
       Text("\(managedObjectContext)")
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
