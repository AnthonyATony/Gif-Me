//
//  MemesViewController.swift
//  Gif-Me !
//
//  Created by Charles Ogodo on 7/26/21.
//

import UIKit

class MemesViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    var memes = ["meme1", "meme2", "meme3", "meme4", "meme5", "meme6"]
    
    @IBOutlet weak var imageMemes: UIImageView!
    @IBAction func buttonImages(_ sender: UIButton) {
       
    
        let r = Int(arc4random_uniform(UInt32(memes.count)))
            imageMemes.image = UIImage(named: memes[r] )
            
            
            
            
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */



