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
        
        var imageDogs = ["dog1", "dog2", "dog3"]
        var imageCats = ["cat 1", "cat 2", "cat 3"]
        var imageBirds = ["bird1", "bird2", "bird3"]
        var favoriteAnimals = [""]
      var x = 0
        
        var gifFoods = ["bunch.gif", "carrot.gif", "stir.gif", "cake.gif"]
        
        // Do any additional setup after loading the view.
    }
    
//        @IBAction func onGifButton2Pressed(_ sender: UIButton) {
//            let randomGif = gifFoods.randomElement()
//            do {
//                let gif = try UIImage(gifName: randomGif!)
//                self.images.setGifImage(gif, loopCount: -1)
//            } catch  {
//                print(error)
//        }
//    }
//
//}
}
