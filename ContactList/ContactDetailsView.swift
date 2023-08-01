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
                HStack {
                    Spacer()
                    Image(systemName: "person.fill")
                        .resizable()
                    .frame(width: 100, height: 100)
                    .padding()
                    Spacer()
                }
                
                ContactInfoView(
                    image: ContactImage.phone.rawValue,
                    text: person.phoneNumber
                )
                
                ContactInfoView(
                    image: ContactImage.email.rawValue,
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
