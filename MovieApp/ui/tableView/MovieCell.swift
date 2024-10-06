//
//  MovieCell.swift
//  MovieApp
//
//  Created by Gül Karataş on 6.10.2024.
//

import UIKit

protocol CellProtocol {
    func AddToCart(indexPath: IndexPath)
}

class MovieCell: UICollectionViewCell {
    
    
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var movieImageView: UIImageView!
    
    var cellProtocol: CellProtocol?
    var indexPath: IndexPath?
    
    @IBAction func addCartButton(_ sender: Any) {
        cellProtocol?.AddToCart(indexPath: indexPath!)
    }
    
}
