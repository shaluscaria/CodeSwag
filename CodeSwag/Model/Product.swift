//
//  Product.swift
//  CodeSwag
//
//  Created by Shalu Scaria on 2018-08-10.
//  Copyright © 2018 Shalu Scaria. All rights reserved.
//

import Foundation

struct  Product {
    private(set) public var title : String
    private(set) public var price : String
    private(set) public var imageName : String
    
    init(title:String,price :String,imageName:String){
        self.title = title
        self.price = price
        self.imageName = imageName
    }
}
