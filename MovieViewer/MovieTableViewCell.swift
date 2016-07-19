//
//  MovieTableViewCell.swift
//  MovieViewer
//
//  Created by Meenakshi Muthuraman on 7/18/16.
//  Copyright © 2016 Meenakshi Muthuraman. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {

    @IBOutlet weak var TitleLabel: UILabel!
    
    @IBOutlet weak var OverviewLabel: UILabel!
    
    @IBOutlet weak var posterView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
