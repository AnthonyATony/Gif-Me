//
//  ViewController.swift
//  Gif-Me !
//
//  Created by Anthony Alvarez on 7/24/21.
//
//test this

import UIKit
import SDWebImage



class HomeViewController: UIViewController {
    
    
    
    @IBAction func popup(_ sender: UIButton) {
        animateIn(desiredView: blur)
        animateIn(desiredView: pop)
    }
    
    
    
    @IBAction func popDown(_ sender: UIButton) {
        animateOut(desiredView: pop)
        animateOut(desiredView: blur)
    }
    

    @IBOutlet var blur: UIVisualEffectView!
    
    let transition = SlideinTransition()
    var topView: UIView?
    
    @IBOutlet var pop: UIView!
    //    let imageView = SDAnimatedImageView()
//    imageView.sd_setImage(with: "https://media.giphy.com/media/GnCc88zZhSVUc/giphy.gif")
//    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        blur.bounds = self.view.bounds //size of the blur
        pop.bounds = CGRect(x: 0, y:0, width:self.view.bounds.width * 0.9 , height: self.view.bounds.height )//0.9 and 0.4
        
        
    }
    func animateOut(desiredView: UIView) {
        UIView.animate(withDuration: 0.3, animations: {
            desiredView.transform = CGAffineTransform(scaleX: 1.2, y: 1.2)
            desiredView.alpha = 0
        }, completion: { _ in
            desiredView.removeFromSuperview()
            
        }
    )}

    func animateIn(desiredView: UIView) {
        let backgroundView = self.view!
        backgroundView.addSubview(desiredView)
        //view's scaling to be 120%
        desiredView.transform = CGAffineTransform(scaleX: 2, y: 2)
        desiredView.alpha = 0
        desiredView.center = backgroundView.center
        
        //animates effects
        UIView.animate(withDuration: 0.3, animations: {
            desiredView.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
            desiredView.alpha = 1
        })
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
            
        case.food:
            guard let foodVC = self.storyboard?.instantiateViewController(withIdentifier: "Food") else { return }
            view.addSubview(foodVC.view)
            self.topView = foodVC.view
            addChild(foodVC)
            
        case.memes:
            guard let memesVC = self.storyboard?.instantiateViewController(withIdentifier: "Memes") else { return }
            view.addSubview(memesVC.view)
            self.topView = memesVC.view
            addChild(memesVC)
            
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

