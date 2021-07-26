//
//  MenuViewController.swift
//  Gif-Me !
//
//  Created by Anthony Alvarez on 7/24/21.
//

import UIKit
enum MenuType: Int {
    case home
    case animals
    //case profile
}
class MenuViewController: UITableViewController {
    var didTapMenuType: ((MenuType) -> Void)?  //makes so other view view controllers can access the slide in menu
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let menuType = MenuType(rawValue: indexPath.row) else {return}
        dismiss(animated: true){ [weak self] in //avoids retain cycles
            print("Dismissing: \(menuType)")
            self?.didTapMenuType?(menuType)//? means optional
        }
        }
    }



