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
                    ContactInfoView(
                        image: SystemImage.phone.rawValue,
                        text: person.phoneNumber
                    )
                    
                    ContactInfoView(
                        image: SystemImage.email.rawValue,
                        text: person.email
                    )
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
