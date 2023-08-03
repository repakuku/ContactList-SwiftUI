//
//  ContactDetailsView.swift
//  ContactList
//
//  Created by Alexey Turulin on 8/1/23.
//

import SwiftUI

struct ContactDetailsView: View {
    let person: Person
    
    var body: some View {
        List {
            Image(systemName: SystemImage.person.rawValue)
                .resizable()
                .frame(width: 100, height: 100)
                .padding()
                .centered()
            
            Label(person.phoneNumber, systemImage: SystemImage.phone.rawValue)
            Label(person.email, systemImage: SystemImage.email.rawValue)
        }
        .listStyle(.automatic)
        .navigationTitle(person.fullName)
    }
}

struct ContactDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        ContactDetailsView(person: Person.getPersons().randomElement()!)
    }
}

struct CenteredViewModifier: ViewModifier {
    func body(content: Content) -> some View {
        HStack {
            Spacer()
            content
            Spacer()
        }
    }
}

extension View {
    func centered() -> some View {
        modifier(CenteredViewModifier())
    }
}
