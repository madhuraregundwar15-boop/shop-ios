//
//  FirstViewController.swift
//  Shop
//
//  Created by MITIOD_iMAC on 19/09/25.
//

import UIKit

struct Product {
    let name: String
    let type: String
    let price: String
    let imageName: String
}

class FirstViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    // REPLACE the old array with this new one
    var shoescollection: [Product] = [
        Product(name: "Roa® CVO", type: "High-Top Sneakers", price: "$192", imageName: "1"),
        Product(name: "Roa® Katharina", type: "Approach Shoes", price: "$412", imageName: "4"),
        Product(name: "Roa® Andreas Strap", type: "Hybrid Boots", price: "$282", imageName: "5")
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return shoescollection.count
    }
     
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "firstshoe", for: indexPath) as! newarrivalscollectionCollectionViewCell
         
        // Get the specific product for this row
        let product = shoescollection[indexPath.row]
        
        // Use the properties from the product to set the image and labels
        cell.firstshoe.image = UIImage(named: product.imageName)
        
        // --- Add these lines when you connect your labels ---
        // cell.nameLabel.text = product.name
        // cell.typeLabel.text = product.type
        // cell.priceLabel.text = product.price
        
        cell.firstshoe.layer.cornerRadius = 20.0
        cell.firstshoe.clipsToBounds = true
         
        return cell
    }
}
