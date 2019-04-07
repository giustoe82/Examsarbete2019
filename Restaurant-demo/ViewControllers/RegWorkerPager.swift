//
//  RegWorkerPager.swift
//  Restaurant-demo
//
//  Created by Marco Giustozzi on 2019-04-07.
//  Copyright © 2019 marcog. All rights reserved.
//

import UIKit

class RegWorkerPager: UIViewController, UIPageViewControllerDelegate {
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var nextButton: UIButton!
    
    var presenter: RegWorkerPresenterProtocol?
    
    var controllers: [RegWorkerSubController] = []
    let pageViewController = UIPageViewController(transitionStyle: .scroll, navigationOrientation: .horizontal, options: nil)
    var index = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        pageViewController.dataSource = self
        pageViewController.delegate = self
        
        view.addSubview(pageViewController.view)
        view.bringSubviewToFront(backButton)
        view.bringSubviewToFront(nextButton)
    }
    
    @IBAction func backAction(_ sender: Any) {
        previousSlide()
    }
    
    @IBAction func nextAction(_ sender: Any) {
        nextSlide()
    }
    
    func setupController() {
        controllers = (presenter?.getAllControllers())!
        pageViewController.setViewControllers([controllers[0]] as [UIViewController], direction: .forward, animated: false, completion: nil)
    }
    
    func nextSlide() {
        index += 1
        
        
        if index < self.controllers.count {
            pageViewController.setViewControllers([controllers[index]], direction: .forward, animated: true, completion: nil)
        } else {
            index = 0
            pageViewController.setViewControllers([controllers[0]], direction: .forward, animated: true, completion: nil)
        }
    }
    
    func previousSlide() {
        index -= 1
        
        
        if index < self.controllers.count {
            pageViewController.setViewControllers([controllers[index]], direction: .reverse, animated: true, completion: nil)
        } else {
            index = 0
            pageViewController.setViewControllers([controllers[0]], direction: .reverse, animated: true, completion: nil)
        }
    }
    
}

// MARK: UIPageViewControllerDataSource

extension RegWorkerPager: UIPageViewControllerDataSource {
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        
        guard let viewControllerIndex = controllers.firstIndex(of: viewController as! RegWorkerSubController) else { return nil }
        
        let previousIndex = viewControllerIndex - 1
        
        guard previousIndex >= 0 else { return controllers.last }
        
        guard controllers.count > previousIndex else { return nil }
        
        return controllers[previousIndex]
        
        
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        
        guard let viewControllerIndex = controllers.firstIndex(of: viewController as! RegWorkerSubController) else { return nil }
        
        let nextIndex = viewControllerIndex + 1
        
        guard nextIndex < controllers.count else { return controllers.first }
        
        guard controllers.count > nextIndex else { return nil         }
        
        return controllers[nextIndex]
        
    }
    
//    func pageViewController(_ pageViewController: UIPageViewController, didFinishAnimating finished: Bool, previousViewControllers: [UIViewController], transitionCompleted completed: Bool) {
//        let pageContentViewController = pageViewController.viewControllers![0]
//        self.pageControlIntro.currentPage = introControllers.firstIndex(of: pageContentViewController as! IntroSubPageController)!
//
//        if hasSeenAllSlides {
//            introButton.setTitle("Got it!", for: .normal)
//        } else {
//            introButton.setTitle("Next", for: .normal)
//        }
//    }
    
}
