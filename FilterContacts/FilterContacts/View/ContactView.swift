//
//  ContactView.swift
//  FilterContacts
//
//  Created by Ganesh on 20/05/23.
//

import SwiftUI

struct ContactView: View {
    let contact:Contact
    var body: some View {
        HStack{
            Text(contact.firstName ?? "-")
            Text(contact.lastName ?? "-")
            Spacer()
            Text(contact.phoneNumber ?? "-")
        }
    }
}


