//
//  DetailsViewController.swift
//  DrinksApp
//
//  Created by Nikola Dojchinovski on 13.3.23.
//

import UIKit

class DetailsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet private weak var tableView: UITableView!
    
    private var data: [Drink] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        data = Drink.getDrinks()
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
