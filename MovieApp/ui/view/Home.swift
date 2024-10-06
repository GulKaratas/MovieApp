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
        
        movieCollectionView.delegate = self
        movieCollectionView.dataSource = self
        
        let design = UICollectionViewFlowLayout()

        design.sectionInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)

        
        design.minimumInteritemSpacing = 1
        design.minimumLineSpacing = 10

       
        let screenWidth = UIScreen.main.bounds.width

       
        let itemWidth = (screenWidth - 30) / 2.02

        design.itemSize = CGSize(width: itemWidth, height: itemWidth * 1.6)
        movieCollectionView.collectionViewLayout = design

        
        
    }
}

extension Home: UICollectionViewDelegate, UICollectionViewDataSource , CellProtocol{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return movies.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let movie = movies[indexPath.row]
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "movieCell", for: indexPath) as! MovieCell
        
        cell.movieImageView.image = UIImage(named: movie.image!)
        cell.priceLabel.text = "\(movie.price!)"
        
        cell.cellProtocol = self
        cell.indexPath = indexPath

        
        cell.layer.borderColor = UIColor.gray.cgColor
        cell.layer.borderWidth = 0.5
        cell.layer.cornerRadius = 10.0
        
        
        
        return cell
    }
    
     func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath){
        let movie = movies[indexPath.row]
        performSegue(withIdentifier: "toDetailsVC", sender: movie)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC" {
            if let movie = sender as? Movies {
                let detailsVC = segue.destination as! Details
                detailsVC.movie = movie
            }
        }
    }
    func AddToCart(indexPath: IndexPath) {
        let movie = movies[indexPath.row]
        print("\(movie.name!) sepete eklendi")
    }
}
