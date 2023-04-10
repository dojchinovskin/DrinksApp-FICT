//
//  ViewController.swift
//  DrinksApp
//
//  Created by Nikola Dojchinovski on 13.3.23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBAction func changeImageViewColor() {
        imageView.tintColor = .cyan
    }
    
    @IBAction func navigateToDetails() {
        let view = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "DetailsViewController")
        guard let navigationController = navigationController else {
            print("No value")
            return
        }
        navigationController.pushViewController(view, animated: true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        title = "Home"
        
    }
    
}

