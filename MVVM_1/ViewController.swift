//
//  ViewController.swift
//  MVVM_1
//
//  Created by Ruslan on 11/7/19.
//  Copyright © 2019 Ruslan Filistovich. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var secondNameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    
    var profile: Profile? {
        didSet {
            guard let profile = profile else { return }
            self.nameLabel.text = profile.name
            self.secondNameLabel.text = profile.secondName
            self.ageLabel.text = "\(profile.age)"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        profile = Profile(name: "Steve", secondName: "Jobs", age: 56)
    }


    
}

