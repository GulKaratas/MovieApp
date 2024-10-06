//
//  Details.swift
//  MovieApp
//
//  Created by Gül Karataş on 6.10.2024.
//

import UIKit

class Details: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var movieLabel: UILabel!
    
    var movie: Movies?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let m = movie {
            movieLabel.text = m.name
            priceLabel.text = "\(m.price!)"
            imageView.image = UIImage(named: m.image!)
        }
        
    }
    

    

}
