//
//  Category.swift
//  CodeSwag
//
//  Created by Shalu Scaria on 2018-08-09.
//  Copyright © 2018 Shalu Scaria. All rights reserved.
//

import Foundation

struct Category{
    private(set) public var title : String
    private(set) public var imageName : String
    
    init(title:String, imageName: String){
        self.title = title
        self.imageName = imageName
    }
}
