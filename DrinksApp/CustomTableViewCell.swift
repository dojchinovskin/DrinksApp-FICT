//
//  CustomTableViewCell.swift
//  DrinksApp
//
//  Created by Nikola Dojchinovski on 20.3.23.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    @IBOutlet private weak var customTitleLabel: UILabel!
    
    @IBOutlet private weak var customImageView: UIImageView!
    
    func setup(item: MyItem) {
        customTitleLabel.text = item.title
        customImageView.image = item.image
    }
    
}
