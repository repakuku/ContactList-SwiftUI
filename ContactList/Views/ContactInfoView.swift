//
//  ContactInfoView.swift
//  ContactList
//
//  Created by Alexey Turulin on 8/1/23.
//

import SwiftUI

struct ContactInfoView: View {
    let image: String
    let text: String

    var body: some View {
        HStack {
            Image(systemName: image)
                .foregroundColor(.blue)
            Text(text)
                .underline()
        }
    }
}

struct ContactInfoView_Previews: PreviewProvider {
    static var previews: some View {
        ContactInfoView(image: "phone", text: "1234567")
    }
}
