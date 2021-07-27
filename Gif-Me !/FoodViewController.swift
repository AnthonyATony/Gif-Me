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
