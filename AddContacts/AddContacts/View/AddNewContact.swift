//
//  AddNewContact.swift
//  AddContacts
//
//  Created by Ganesh on 20/05/23.
//

import SwiftUI

struct AddNewContact: View {
    @EnvironmentObject var coreDataStack: CoreDataStack
    @Binding var isAddContactPresented:Bool
    @State var firstName:String = ""
    @State var lastName:String = ""
    @State var phoneNumber:String = ""
    private var isDisabled:Bool{
        firstName.isEmpty || lastName.isEmpty || phoneNumber.isEmpty
    }
    var body: some View {
        NavigationView {
            VStack(spacing: 16) {
                TextField("First Name", text:
                            $firstName)
                TextField("Last Name", text:
                            $lastName)
                TextField("Phone Number", text:
                            $phoneNumber)
                .keyboardType(.phonePad)
                Spacer()
            }
            .padding(16)
            .navigationTitle("Add A New Contact")
            .navigationBarItems(trailing:
            Button(action: saveContact) {
            Image(systemName: "checkmark")
            .font(.headline)
            }
            .disabled(isDisabled))
        }
    }
    
    func saveContact(){
        coreDataStack.insertContact(firstName: firstName, lastName: lastName, phoneNumber: phoneNumber)
        isAddContactPresented.toggle()
    }
}

//struct AddNewContact_Previews: PreviewProvider {
//    static var previews: some View {
//        AddNewContact()
//    }
//}
