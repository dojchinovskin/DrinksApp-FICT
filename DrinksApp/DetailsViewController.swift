//
//  DetailsViewController.swift
//  DrinksApp
//
//  Created by Nikola Dojchinovski on 13.3.23.
//

import UIKit

class DetailsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet private weak var tableView: UITableView!
    
    private var data: [MyItem] = [
        MyItem(title: "Title 1", image: UIImage(systemName: "star")!),
        MyItem(title: "Title 2", image: UIImage(systemName: "star.fill")!),
        MyItem(title: "Title 3", image: UIImage(systemName: "star")!),
        MyItem(title: "Title 4", image: UIImage(systemName: "star.fill")!)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let customCell = tableView.dequeueReusableCell(withIdentifier: "CustomTableViewCell") as? CustomTableViewCell else {
            return UITableViewCell()
        }
        customCell.setup(item: data[indexPath.row])
        
        return customCell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }

}
