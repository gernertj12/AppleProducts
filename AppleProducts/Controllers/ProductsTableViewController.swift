//
//  ProductsTableViewController.swift
//  AppleProducts
//
//  Created by Jack Gernert on 9/13/18.
//  Copyright © 2018 Jack Gernert. All rights reserved.
//

// 1 - Design the new cell in Storyboard
// 2 - Create a subclass of UITableViewCell for the new cell
// 3 - Update cell with UITableViewDataSource

import UIKit

class ProductsTableViewController: UITableViewController {
    
    // MARK: - Data model
    
    var products = ProductLine.getProductLines()[0].products

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Apple Products"

    }

    // MARK: - UITableViewDataSource
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return products.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProductCell", for: indexPath) as! ProductTableViewCell
        let product = products[indexPath.row]
        
        cell.textLabel?.text = product.title
        
        return cell
    }
    
}

