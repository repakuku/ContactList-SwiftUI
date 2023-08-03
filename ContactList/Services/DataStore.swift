//
//  DataStore.swift
//  ContactList
//
//  Created by Алексей Турулин on 5/27/23.
//

final class DataStore {
    static let shared = DataStore()
    
    enum Email: String, CaseIterable  {
        case gmail = "@gmail.com"
        case icloud = "@icloud.com"
    }
    
    let firstNames = [
        "William",
        "Noah",
        "Olivia",
        "Michael",
        "David",
        "Thomas",
        "Emma",
        "Abigail",
        "Elizabeth",
        "Sarah",
        "Evelyn",
        "Oliver",
        "Daniel",
        "Liam",
        "Grace"
    ]
    
    let secondNames = [
        "Smith",
        "Johnson",
        "Williams",
        "Brown",
        "Jones",
        "Garcia",
        "Miller",
        "Davis",
        "Rodriguez",
        "Martinez",
        "Hernandez",
        "Lopez",
        "Gonzalez",
        "Wilson",
        "Anderson"
    ]
    
    let phoneNumbers = [
        "(213)456-3442",
        "(201)763-8876",
        "(213)998-3564",
        "(251)211-2243",
        "(480)987-3343",
        "(602)349-9725",
        "(938)890-9245",
        "(205)835-1129",
        "(256)900-2763",
        "(907)467-7153",
        "(520)385-0739",
        "(928)817-2643",
        "(209)883-8761",
        "(201)169-3872",
        "(323)378-1837",
    ]
    
    let emails = Email.allCases
    
    private init() {}
}
