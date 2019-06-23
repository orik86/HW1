//
//  ViewController.swift
//  HW1
//
//  Created by orik on 22.06.2019.
//  Copyright © 2019 orik. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    var defaultName = "User"
    var defaultPass = "Pass"
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        cleansData()
    }
    
    @IBOutlet var name: UITextField!
    @IBOutlet var pass: UITextField!
    
    @IBAction func login(_ sender: Any) {
        if name.text != defaultName || pass.text != defaultPass {
            alertWorngData()
            cleansData()
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let infoViewController = segue.destination as! InfoViewController
        switch segue.identifier {
        case "login": infoViewController.info = "Logining"
        case "myName": infoViewController.info = "You name: " + defaultName
        case "myPass": infoViewController.info = "You password: " + defaultPass
        default: break
        }
    }
    
    func cleansData() {
        name.text = ""
        pass.text = ""
        name.placeholder = "Enter you name"
        pass.placeholder = "Enter you password"
    }
    
    func alertWorngData() {
        let alert = UIAlertController(title: "Wrong name or pass", message: "Please check again", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
}

