//
//  InfoView.swift
//  HW1
//
//  Created by orik on 23.06.2019.
//  Copyright © 2019 orik. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController {
    var info = ""
    
    override func viewDidLoad() {
        infoView.text = info
    }
    
    @IBOutlet var infoView: UILabel!
    
}
