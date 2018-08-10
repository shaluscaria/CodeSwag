//
//  CategoryCell.swift
//  CodeSwag
//
//  Created by Shalu Scaria on 2018-08-09.
//  Copyright © 2018 Shalu Scaria. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {
    
    @IBOutlet weak var categoryImage : UIImageView!
    @IBOutlet weak var categoryLbl : UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
