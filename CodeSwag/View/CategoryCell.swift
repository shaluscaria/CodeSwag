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

    func getCellData(category: Category){
        categoryImage.image = UIImage(named: category.imageName)
        categoryLbl.text = category.title
    }

}
