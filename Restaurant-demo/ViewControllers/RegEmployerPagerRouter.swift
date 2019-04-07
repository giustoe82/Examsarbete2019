//
//  RegEmployerPagerRouter.swift
//  Restaurant-demo
//
//  Created by Marco Giustozzi on 2019-04-07.
//  Copyright © 2019 marcog. All rights reserved.
//

import UIKit

class RegEmployerPagerRouter {
    
    var empControllers: [RegEmployerSubController] = []
    
    func getEmpControllers(presenter: RegEmployerPagerPresenter) -> [RegEmployerSubController] {
        
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        
        let subPresenter = presenter
        
        let slide1 = storyBoard.instantiateViewController(withIdentifier: "REPage1") as? RegEmployerSubController as? REPage1
        slide1?.presenter = subPresenter
        slide1?.index = 0
        
        let slide2 = storyBoard.instantiateViewController(withIdentifier: "REPage2") as? RegEmployerSubController as? REPage2
        slide2?.presenter = subPresenter
        slide2?.index = 1
        
        let slide3 = storyBoard.instantiateViewController(withIdentifier: "REPage3") as? RegEmployerSubController as? REPage3
        slide3?.presenter = subPresenter
        slide3?.index = 2
        
        empControllers.append(slide1!)
        empControllers.append(slide2!)
        empControllers.append(slide3!)
        
        return empControllers
        
    }
}
