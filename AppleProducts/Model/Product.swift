//
//  Product.swift
//  AppleProducts
//
//  Created by Jack Gernert on 9/6/18.
//  Copyright © 2018 Jack Gernert. All rights reserved.
//

import UIKit


//Product
//ProductLine will contain [Product]

enum ProductRating {
    case unrated
    case average
    case ok
    case good
    case brilliant
}



class Product {
    var image: UIImage
    var title: String
    var description: String
    var rating: ProductRating
    
    init(titled: String, description: String, imageName: String) {
        
        self.title = titled
        self.description = description
        if let image = UIImage(named: imageName) {
            self.image = image
        } else {
            self.image = UIImage(named: "default")!
        }
        
        rating = .unrated
    }
}
