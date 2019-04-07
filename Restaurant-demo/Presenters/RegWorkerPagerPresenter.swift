//
//  RegWorkerPagerPresenter.swift
//  Restaurant-demo
//
//  Created by Marco Giustozzi on 2019-04-07.
//  Copyright © 2019 marcog. All rights reserved.
//

import Foundation

class RegWorkerPagerPresenter {
    weak var router: Router?
    var localRegWorkerRouter: RegWorkerPagerRouter?
    
}

extension RegWorkerPagerPresenter: RegWorkerPresenterProtocol {
    
    func getAllControllers() -> [RegWorkerSubController] {
        
        return (localRegWorkerRouter?.getWorkerControllers(presenter: self))!
    }
}

protocol RegWorkerPresenterProtocol: class {
    
    func getAllControllers() -> [RegWorkerSubController]
}
