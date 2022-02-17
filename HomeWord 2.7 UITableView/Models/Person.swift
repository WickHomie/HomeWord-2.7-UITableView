//
//  Person.swift
//  HomeWord 2.7 UITableView
//
//  Created by Илья Терновской on 11.02.2022.
//

import Foundation

struct Person {
    let name: String
    let surname: String
    let email: String
    let number: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
}

extension Person {
    static func getRandomContact() -> [Person] {
        let names = DataManager.personalInfo.names.shuffled()
        let surnames = DataManager.personalInfo.surnames.shuffled()
        let emails = DataManager.personalInfo.emails.shuffled()
        let numbers = DataManager.personalInfo.numbers.shuffled()

        var persons:[Person] = []
        
        let count = names.count
        
        for person in 0..<count {
            let person = Person(
                name: names[person],
                surname: surnames[person],
                email: emails[person],
                number: numbers[person]
            )
            persons.append(person)
        }
        
        return persons

    }
    
}

enum Contacts: String {
    case phone = "phone"
    case email = "tray"
}


