//
//  ViewController.swift
//  MiniApp_UITextfield_WelcomeTeaganR
//
//  Created by Tiger Coder on 9/8/20.
//  Copyright © 2020 Tiger Coder. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    //variables
    @IBOutlet weak var welcomeLabel: UILabel!
    @IBOutlet weak var nameEnter: UITextField!
    @IBOutlet weak var enterButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameEnter.delegate = self
        // Do any additional setup after loading the view.
    }
    //functions
    @IBAction func enterButton(_ sender: Any) {
        let name = nameEnter.text!
        welcomeLabel.text = "Hello \(name)!"
        nameEnter.resignFirstResponder()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        nameEnter.resignFirstResponder()
    }
}
