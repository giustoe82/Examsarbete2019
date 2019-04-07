//
//  SignUpPresenter.swift
//  Restaurant-demo
//
//  Created by Marco Giustozzi on 2019-04-03.
//  Copyright © 2019 marcog. All rights reserved.
//

import UIKit

class SignUpPresenter {
    
    weak var router: Router?
    
}

extension SignUpPresenter: SignUpProtocol {
   
    func gotoSecondPage() {
        router?.gotoSecondPage()
    }
    
    func gotoEmpReg() {
        router?.showEmployerReg()
    }
    
    func gotoWorkerReg() {
        router?.showWorkerReg()
    }
   
}

//MARK: - Protocol -

protocol SignUpProtocol {
    
    func gotoSecondPage()
    func gotoEmpReg()
    func gotoWorkerReg()
    
}
