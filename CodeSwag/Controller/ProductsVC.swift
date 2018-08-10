//
//  ProductsVC.swift
//  CodeSwag
//
//  Created by Shalu Scaria on 2018-08-10.
//  Copyright © 2018 Shalu Scaria. All rights reserved.
//

import UIKit

class ProductsVC: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    private(set) public var products = [Product]()
    @IBOutlet weak var productsCollection : UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        productsCollection.delegate = self
        productsCollection.dataSource = self
    }

    func initProducts(category : Category){
        products = DataService.instance.getProducts(forCategoryTitle: category.title)
        navigationItem.title = category.title
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "productcell", for: indexPath) as? ProductCell {
            cell.updateViews(product: products[indexPath.row])
            return cell
        }else{
            return ProductCell()
        }
    }
    


}
