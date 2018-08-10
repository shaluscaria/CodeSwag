//
//  DataService.swift
//  CodeSwag
//
//  Created by Shalu Scaria on 2018-08-09.
//  Copyright © 2018 Shalu Scaria. All rights reserved.
//

import Foundation

class DataService {
    static let instance = DataService()
    
    private let categories = [
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "HOODIES", imageName: "hoodies.png"),
        Category(title: "DIGITAL", imageName: "digital.png"),
        Category(title: "HATS", imageName: "hats.png")
    ]
    
    func getCategories() -> [Category]{
        return categories
    }
}
