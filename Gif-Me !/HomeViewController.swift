//
//  ViewController.swift
//  Gif-Me !
//
//  Created by Anthony Alvarez on 7/24/21.
//

import UIKit


class HomeViewController: UIViewController {
    let transition = SlideinTransition()
    var topView: UIView?
    
    override func viewDidLoad() {
      super.viewDidLoad()
        
   }
    
    @IBAction func didTapMenu(_ sender: UIBarButtonItem) {
        guard let menuViewController = storyboard?.instantiateViewController(withIdentifier: "MenuViewController") as? MenuViewController else {return} //casts upon the MenuViewController
        menuViewController.didTapMenuType = { menuType in
            self.transitionToNewContent(menuType)
            
        }
        menuViewController.modalPresentationStyle = .overCurrentContext
        menuViewController.transitioningDelegate = self
        present(menuViewController, animated: true)
    }
    func transitionToNewContent(_ menuType: MenuType){
        let title = String(describing: menuType).capitalized
        self.title = title
        topView?.removeFromSuperview()
        switch menuType {
        
            
        case.home: break
//          guard let homeVC = self.storyboard?.instantiateViewController(withIdentifier: "Home") else { return }
//         view.addSubview(homeVC.view)
//        self.topView = homeVC.view
//    addChild(homeVC)
        
        case.animals:
                guard let animalsVC = self.storyboard?.instantiateViewController(withIdentifier: "Animals") else { return }
                view.addSubview(animalsVC.view)
                self.topView = animalsVC.view
           addChild(animalsVC)
      
        }
    
    //override func viewDidLoad() {
    //    super.viewDidLoad()
        // Do any additional setup after loading the view.
  }
}

    extension HomeViewController: UIViewControllerTransitioningDelegate {
        func animationController(forPresented presented: UIViewController, presenting: UIViewController, source: UIViewController) -> UIViewControllerAnimatedTransitioning?{
            transition.isPresenting = true
            return transition
        }
        func animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
            transition.isPresenting = false
            return transition
        }
    

// hello


    }

