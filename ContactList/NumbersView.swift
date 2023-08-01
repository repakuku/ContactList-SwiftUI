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
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct NumbersView_Previews: PreviewProvider {
    static var previews: some View {
        NumbersView(persons: Person.getPersons())
    }
}
