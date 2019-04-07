//
//  RegWorkerpagerRouter.swift
//  Restaurant-demo
//
//  Created by Marco Giustozzi on 2019-04-07.
//  Copyright © 2019 marcog. All rights reserved.
//

import UIKit

class RegWorkerPagerRouter {
    
    var workerControllers: [RegWorkerSubController] = []

    func getWorkerControllers(presenter: RegWorkerPagerPresenter) -> [RegWorkerSubController] {
        
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        
        let subPresenter = presenter
        
        let slide1 = storyBoard.instantiateViewController(withIdentifier: "RWPage1") as? RegWorkerSubController as? RWPage1
        slide1?.presenter = subPresenter
        slide1?.index = 0
        
        let slide2 = storyBoard.instantiateViewController(withIdentifier: "RWPage2") as? RegWorkerSubController as? RWPage2
        slide2?.presenter = subPresenter
        slide2?.index = 1
        
        let slide3 = storyBoard.instantiateViewController(withIdentifier: "RWPage3") as? RegWorkerSubController as? RWPage3
        slide3?.presenter = subPresenter
        slide3?.index = 2
        
        workerControllers.append(slide1!)
        workerControllers.append(slide2!)
        workerControllers.append(slide3!)
        
        return workerControllers
        
    }
}

