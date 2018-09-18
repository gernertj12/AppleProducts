//
//  ProductTableViewCell.swift
//  AppleProducts
//
//  Created by Jack Gernert on 9/14/18.
//  Copyright © 2018 Jack Gernert. All rights reserved.
//

import UIKit

class ProductTableViewCell: UITableViewCell {

    
    @IBOutlet weak var productImageView: UIImageView!
    @IBOutlet weak var productTitleLabel: UILabel!
    @IBOutlet weak var productDescriptionLabel: UILabel!
    
    // MARK: Data Model
    
    var product: Product? {
        didSet {
            self.updateUI()
        }
    }
    
    func updateUI()
    {
        productImageView?.image = product?.image
        productTitleLabel?.text = product?.title
        productDescriptionLabel?.text = product?.description
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
}
