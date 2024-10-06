//
//  Home.swift
//  MovieApp
//
//  Created by Gül Karataş on 6.10.2024.
//

import UIKit

class Home: UIViewController {

    @IBOutlet weak var movieCollectionView: UICollectionView!
    
    var movies = [Movies]()
    override func viewDidLoad() {
        super.viewDidLoad()

        let movie1 = Movies(id: 1, name: "Emily in Paris", image: "emily", price: 10)
        let movie2 = Movies(id: 2, name: "Empire Ottoman", image: "ottoman", price: 15)
        let movie3 = Movies(id: 3, name: "Cedric", image: "cedric", price: 20)
        let movie4 = Movies(id: 4, name: "Kaptan Philps", image: "kaptan", price:14)
        let movie5 = Movies(id: 5, name: "Gilmore Girls", image: "gilmore", price: 12)
        let movie6 = Movies(id: 6, name: "Kar Kardeşliği", image: "kar", price: 18)
        
        movies.append(movie1)
        movies.append(movie2)
        movies.append(movie3)
        movies.append(movie4)
        movies.append(movie5)
        movies.append(movie6)
        
        
    }
    

   

}
