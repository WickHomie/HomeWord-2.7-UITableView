//
//  ContactsViewController.swift
//  HomeWord 2.7 UITableView
//
//  Created by Илья Терновской on 11.02.2022.
//

import UIKit

class ContactsViewController: UITableViewController {
    
    var persons: [Person] = []


    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Contacts", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let person = persons[indexPath.row]

        content.text = person.fullName
        cell.contentConfiguration = content
        
        return cell
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let infoVC = segue.destination as? InfoViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        let person = persons[indexPath.row]
        infoVC.person = person
    }


}
