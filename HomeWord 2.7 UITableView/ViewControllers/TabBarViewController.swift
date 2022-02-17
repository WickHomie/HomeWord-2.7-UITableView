//
//  TabBarViewController.swift
//  HomeWord 2.7 UITableView
//
//  Created by Илья Терновской on 12.02.2022.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers()
    }
    
    private func setupViewControllers() {
        let persons = Person.getRandomContact()
        let contactsVC = viewControllers?.first as! ContactsViewController
        let secondContactsVS = viewControllers?.last as! SecondContactViewController
        
        contactsVC.persons = persons
        secondContactsVS.persons = persons

   }
}
