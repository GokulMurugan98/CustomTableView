//
//  CustomTableViewCell.swift
//  customTableView
//
//  Created by Gokul Murugan on 18/11/23.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var view: UIView!
    static let identifier = "myCustomCell"
    override func awakeFromNib() {
        super.awakeFromNib()
        view.backgroundColor = .gray
        view.layer.borderWidth = 1
        view.layer.cornerRadius = 5
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
