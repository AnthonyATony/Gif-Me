//
//  AnimalsViewController.swift
//  Gif-Me !
//
//  Created by Anthony Alvarez on 7/24/21.
//

import UIKit

class AnimalsViewController: UIViewController {
    
    @IBOutlet weak var images: UIImageView!
    
    @IBOutlet weak var imageButton: UIButton!
    
    
    
    @IBOutlet weak var downVote: UIButton!
    
    @IBOutlet weak var upVote: UIButton!
    
    
    @IBOutlet weak var test: UIImageView!
    
    var imageDogs = ["dog1", "dog2", "dog3"]
    var imageCats = ["cat 1", "cat 2", "cat 3"]
    var imageBirds = ["bird1", "bird2", "bird3"]
    var favoriteAnimals = [""]
  var x = 0
    
    @IBAction func upVote(_ sender: UIButton) {
           
        
        }
    
    
    @IBAction func buttonImages(_ sender: UIButton) {
        let num = Int.random(in: 0..<3)
        
        if num == 1 {
        let r = Int(arc4random_uniform(UInt32(imageCats.count)))
            images.image = UIImage(named: imageCats[r] )
            
            
            
            
        }
        if num == 0 {
            //let number:Int = Int(arc4random_uniform(3+x))
            let r = Int(arc4random_uniform(UInt32(imageDogs.count)))
            images.image = UIImage(named: imageDogs[r] )
            
            
          
                
                
            }
        
        
        if num == 2 {
            //let number:Int = Int(arc4random_uniform(3))
            let r = Int(arc4random_uniform(UInt32(imageBirds.count)))
            
            images.image = UIImage(named: imageBirds[r] )
            
          
       
            
           
            }
                
            }
        }

   
    
       
    
    
        
    
