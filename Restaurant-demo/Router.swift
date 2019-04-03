//
//  Router.swift
//  Restaurant-demo
//
//  Created by Marco Giustozzi on 2019-04-03.
//  Copyright © 2019 marcog. All rights reserved.
//

import UIKit

class Router {
    
    let storyBoard = UIStoryboard(name: "Main", bundle: nil)
    var rootController: SignUpVC?
    var testVC: TestViewController?
    
    
    func gotoSecondPage() {
        
        testVC = storyBoard.instantiateViewController(withIdentifier: "testView") as? TestViewController
        let presenter = TestPresenter()
        presenter.router = self
        testVC?.presenter = presenter
        
        rootController?.navigationController?.pushViewController(testVC!, animated: true)
    
    }
}
