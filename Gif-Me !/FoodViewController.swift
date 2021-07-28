//
//  FoodViewController.swift
//  Gif-Me !
//
//  Created by Charles Ogodo on 7/26/21.
//

import UIKit
import SwiftyGif
class FoodViewController: UIViewController {
    
    @IBOutlet weak var mediaImage2: UIImageView!
    var imageBre = ["bre1", "bre2", "bre3"]
    var imageDes = ["des1", "des2", "des3"]
    var imageGood = ["good1", "good2", "good3"]
    @IBAction func buttonImages(_ sender: UIButton) {
        mediaImage2.image = UIImage(named: "" )
        let num = Int.random(in: 0..<3)
        
        if num == 1 {
        let r = Int(arc4random_uniform(UInt32(imageBre.count)))
            mediaImage2.image = UIImage(named: imageBre[r] )
            
            
            
            
        }
        if num == 0 {
            //let number:Int = Int(arc4random_uniform(3+x))
            let r = Int(arc4random_uniform(UInt32(imageDes.count)))
            mediaImage2.image = UIImage(named: imageDes[r] )
            
            
          
                
                
            }
        
        
        if num == 2 {
            //let number:Int = Int(arc4random_uniform(3))
            let r = Int(arc4random_uniform(UInt32(imageGood.count)))
            
            mediaImage2.image = UIImage(named: imageGood[r] )
            
          
       
            
           
            }
                
            }
    override func viewDidLoad() {
        super.viewDidLoad()
        do {
            let gif = try UIImage(gifName: "stir.gif")
            self.mediaImage2.setGifImage(gif, loopCount: -1)
        } catch  {
            print(error)
        }
        
        
        // Do any additional setup after loading the view.
    }
    
   
}
