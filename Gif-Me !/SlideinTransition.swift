//
//  SlideinTransition.swift
//  Gif-Me !
//
//  Created by Anthony Alvarez on 7/24/21.
//

import UIKit

class SlideinTransition: NSObject, UIViewControllerAnimatedTransitioning {
            var isPresenting = false
   let dimmingView = UIView()
    func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
        return 0.05
    }
    func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
        guard let toViewController = transitionContext.viewController(forKey: .to),
              let fromViewController = transitionContext.viewController(forKey: .from) else {return}
        let containerView = transitionContext.containerView
        let finalWidth = toViewController.view.bounds.width * 0.8
        let finalHeight = toViewController.view.bounds.height
        if isPresenting {
            //dim view
            dimmingView.backgroundColor = .black
            dimmingView.alpha = 0.0
            dimmingView.frame = containerView.bounds
            containerView.addSubview(dimmingView)
            
            //add menu
            containerView.addSubview(toViewController.view)
            toViewController.view.frame = CGRect(x: -finalWidth, y:0, width: finalWidth, height: finalHeight)
        }
        //move on screen
        let transform = {
            self.dimmingView.alpha = 0.5 //changes the dimming value
            toViewController.view.transform = CGAffineTransform(translationX: finalWidth, y:0)
        }
        //move back
        let identity = {
            self.dimmingView.alpha = 0 //turns off the dim
            fromViewController.view.transform = .identity
        }
        let duration = transitionDuration(using: transitionContext)
        let isCancelled = transitionContext.transitionWasCancelled
        UIView.animate(withDuration: duration, animations: {self.isPresenting ? transform() : identity()}){(_) in transitionContext.completeTransition(!isCancelled)}
    }

    }
    


