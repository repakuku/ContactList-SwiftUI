//
//  Contact.swift
//  ContactList
//
//  Created by Alexey Turulin on 8/1/23.
//

import Foundation

enum SystemImage: String {
    case contacts = "person.2.fill"
    case numbers = "phone.fill"
    case person = "person.fill"
    case phone = "phone"
    case email = "tray"
}

struct Person: Identifiable {
    var id: Int
    let firstName: String
    let secondName: String
    let phoneNumber: String
    let email: String
    
    var fullName: String {
        "\(firstName) \(secondName)"
    }
    
    static func getPersons() -> [Person] {
        let dataStore = DataStore.shared
        
        var persons: [Person] = []
        
        let firstNames = dataStore.firstNames.shuffled()
        let secondNames = dataStore.secondNames.shuffled()
        let phoneNumbers = dataStore.phoneNumbers.shuffled()
        let emails = dataStore.emails
        
        let iterations = min(
            firstNames.count,
            secondNames.count,
            phoneNumbers.count
        )
        
        for index in 0..<iterations {
            var email = (firstNames[index] + secondNames[index]).lowercased()
            email += emails.randomElement()?.rawValue ?? ""
            
            persons.append(
                Person(
                    id: index,
                    firstName: firstNames[index],
                    secondName: secondNames[index],
                    phoneNumber: phoneNumbers[index],
                    email: email
                    )
            )
        }
        
        return persons
    }
}
