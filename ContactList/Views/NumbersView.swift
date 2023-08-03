//
//  NumbersView.swift
//  ContactList
//
//  Created by Alexey Turulin on 8/1/23.
//

import SwiftUI

struct NumbersView: View {
    let persons: [Person]
    
    var body: some View {
        NavigationStack {
            List(persons) { person in
                Section(person.fullName) {
                    Label(person.phoneNumber, systemImage: SystemImage.phone.rawValue)
                    Label(person.email, systemImage: SystemImage.email.rawValue)
                }
            }
            .listStyle(.plain)
            .navigationTitle("Contact List")
        }
    }
}

struct NumbersView_Previews: PreviewProvider {
    static var previews: some View {
        NumbersView(persons: Person.getPersons())
    }
}
