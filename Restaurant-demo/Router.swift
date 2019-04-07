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
    
    func showEmployerReg() {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let regEmpViewController = storyBoard.instantiateViewController(withIdentifier: "RegEmployerPager") as? RegEmployerPager
        
        let presenter = RegEmployerPagerPresenter()
        presenter.router = self
        presenter.localRegEmployerRouter = RegEmployerPagerRouter()
        regEmpViewController?.presenter = presenter
        regEmpViewController?.setupController()
        
        rootController?.navigationController?.present(regEmpViewController!, animated: false, completion: nil)
    }
    
    func showWorkerReg() {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let regWorkerViewController = storyBoard.instantiateViewController(withIdentifier: "RegWorkerPager") as? RegWorkerPager
        
        let presenter = RegWorkerPagerPresenter()
        presenter.router = self
        presenter.localRegWorkerRouter = RegWorkerPagerRouter()
        regWorkerViewController?.presenter = presenter
        regWorkerViewController?.setupController()
        
        rootController?.navigationController?.present(regWorkerViewController!, animated: false, completion: nil)
    }
}
