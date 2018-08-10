//
//  ViewController.swift
//  CodeSwag
//
//  Created by Shalu Scaria on 2018-08-09.
//  Copyright © 2018 Shalu Scaria. All rights reserved.
//

import UIKit

class CategoriesVC: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    
    @IBOutlet weak var categoryTable : UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        categoryTable.delegate = self
        categoryTable.dataSource = self
    
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getCategories().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "categorycell") as? CategoryCell{
            let category = DataService.instance.getCategories()[indexPath.row]
            cell.getCellData(category: category)
            return cell
        }
        else {
            return CategoryCell()
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150.0
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let category = DataService.instance.getCategories()[indexPath.row]
        performSegue(withIdentifier: "productsvc", sender: category)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let productsVC = segue.destination as? ProductsVC {
            
            let backBtn = UIBarButtonItem()
            backBtn.title = ""
            navigationItem.backBarButtonItem = backBtn
            
            assert(sender as? Category != nil)
            productsVC.initProducts(category: sender as! Category)
        }
    }

}












