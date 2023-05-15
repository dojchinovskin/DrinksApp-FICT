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
    
    private func navigateToDrinkDetails(_ drink: Drink) {
        let view = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "DrinkViewController")
        guard let navigationController = navigationController else {
            print("No value")
            return
        }
        navigationController.pushViewController(view, animated: true)
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
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let item = data[indexPath.row]
        navigateToDrinkDetails(item)
    }

}
