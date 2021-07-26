//
//  AnimalsViewController.swift
//  Gif-Me !
//
//  Created by Anthony Alvarez on 7/24/21.
//

import UIKit

class AnimalsViewController: UIViewController {
    
    
    @IBOutlet var imagez: UIImageView!
    let dogs = ["dog1", "dog2"]
        //= [UIImage(named:"dog1"), UIImage(named:"dog2"), UIImage(named:"dog3")]
    let cats = [UIImage(named:"cat1"), UIImage(named:"cat2"), UIImage(named:"cat3")]
    let number = [0, 1]
    @IBAction func show(_sender: UIButton)
    {
        if number.randomElement() == 0 {
            let n:Int = Int(arc4random_uniform(3))
            imagez.image = UIImage (named: dogs[n])
        }
       
        
    }
   
    
    
    
    
    
    
    
    
    var topView: UIView?
    let transition = SlideinTransition()
    let animalsVC = AnimalsViewController()

    
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
        case.home:
            guard let homeVC = self.storyboard?.instantiateViewController(withIdentifier: "Home") else { return }
            view.addSubview(homeVC.view)
            self.topView = homeVC.view
        addChild(homeVC)
        
        case.animals: break
               // guard let animalsVC = self.storyboard?.instantiateViewController(withIdentifier: "Animals") else { return }
//                view.addSubview(animalsVC.view)
//                self.topView = animalsVC.view
//            addChild(animalsVC)
        }
  }
}

    extension AnimalsViewController: UIViewControllerTransitioningDelegate
    {
        func animationController(forPresented presented: UIViewController, presenting: UIViewController, source: UIViewController) -> UIViewControllerAnimatedTransitioning?{
            transition.isPresenting = true
            return transition
        }
        func animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
            transition.isPresenting = false
            return transition
        }
    

}

