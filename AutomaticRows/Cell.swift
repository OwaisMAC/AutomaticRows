//
//  Cell.swift
//  AutomaticRows
//
//  Created by Owais Munawar on 2/21/19.
//  Copyright © 2019 Owais Munawar. All rights reserved.
//

import UIKit

class Cell: UITableViewCell {

   
    @IBOutlet weak var constraintHeight: NSLayoutConstraint!
    @IBOutlet var titleLabel:UILabel!
    @IBOutlet var descriptionLabel:UILabel!
    @IBOutlet var iconImageView:UIImageView!
    @IBOutlet var detailImageView:UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
