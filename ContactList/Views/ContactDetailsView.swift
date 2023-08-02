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
        NavigationStack {
            List {
                Image(systemName: SystemImage.person.rawValue)
                    .resizable()
                    .frame(width: 100, height: 100)
                    .padding()
                    .centered()
                
                ContactInfoView(
                    image: SystemImage.phone.rawValue,
                    text: person.phoneNumber
                )
                
                ContactInfoView(
                    image: SystemImage.email.rawValue,
                    text: person.email
                )
            }
            .listStyle(.automatic)
            .navigationTitle("\(person.fullName)")
        }
    }
}

struct ContactDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        ContactDetailsView(person: Person(id: 0, firstName: "Name", secondName: "Surname", phoneNumber: "213-321-4785", email: "ahhfgrt@gmail.com"))
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
