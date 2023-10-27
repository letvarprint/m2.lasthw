//
//  ViewController.swift
//  lasthw
//
//  Created by Alexandru Brixencov on 25.10.2023.
//

import UIKit

final class DetailsViewController: UIViewController {

    @IBOutlet weak var phone: UILabel!
    @IBOutlet weak var email: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "\(person.name) \(person.surname)"
        phone.text = person.phone
        email.text = person.email
    }
}

