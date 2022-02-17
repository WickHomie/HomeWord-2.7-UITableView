//
//  InfoViewController.swift
//  HomeWord 2.7 UITableView
//
//  Created by Илья Терновской on 16.02.2022.
//

import UIKit

class InfoViewController: UIViewController {
    
    
    @IBOutlet var phone: UILabel!
    @IBOutlet var email: UILabel!
    
    var person: Person!

    override func viewDidLoad() {
        super.viewDidLoad()
        title = person.fullName
        phone.text = "Phone: \(person.number)"
        email.text = "Email: \(person.email)"
        

    }


}
