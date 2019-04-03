//
//  ViewController.swift
//  Restaurant-demo
//
//  Created by Marco Giustozzi on 2019-03-24.
//  Copyright © 2019 marcog. All rights reserved.
//

import UIKit

class SignUpVC: UIViewController {
    
    var presenter: SignUpProtocol?

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func goto(_ sender: Any) {
        presenter?.gotoSecondPage()
    }
    
}

