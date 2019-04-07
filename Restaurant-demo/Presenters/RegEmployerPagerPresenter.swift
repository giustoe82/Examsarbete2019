//
//  RegEmployerPagerPresenter.swift
//  Restaurant-demo
//
//  Created by Marco Giustozzi on 2019-04-07.
//  Copyright © 2019 marcog. All rights reserved.
//

import Foundation

class RegEmployerPagerPresenter {
    weak var router: Router?
    var localRegEmployerRouter: RegEmployerPagerRouter?

}

extension RegEmployerPagerPresenter: RegEmployerPresenterProtocol {
    
    func getAllControllers() -> [RegEmployerSubController] {
        
        return (localRegEmployerRouter?.getEmpControllers(presenter: self))!
    }
}

protocol RegEmployerPresenterProtocol: class {
 
    func getAllControllers() -> [RegEmployerSubController]
}
