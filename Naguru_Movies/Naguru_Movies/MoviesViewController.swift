//
//  MoviesViewController.swift
//  Naguru_Movies
//
//  Created by student on 4/28/22.
//

import UIKit

class MoviesViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        movieType.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = movieCollectionView.dequeueReusableCell(withReuseIdentifier: "movieCell", for: indexPath) as! MovieCollectionViewCell

        cell.assignMovie(movieType[indexPath.row])
        return cell
    }
    

    
    @IBOutlet weak var movieCollectionView: UICollectionView!
    
    
    @IBOutlet weak var movieNameLabel: UILabel!
    
    @IBOutlet weak var movieRatingLabel: UILabel!
    
    
    @IBOutlet weak var movieBoxOfficeLabel: UILabel!
    
    
    @IBOutlet weak var movieYearLabel: UILabel!
    
    
    @IBOutlet weak var moviePlotLabel: UILabel!
    
    @IBOutlet weak var movieCastLabel: UILabel!
    
    var movieType:[Movie] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        movieCollectionView.delegate = self
        movieCollectionView.dataSource = self

        // Do any additional setup after loading the view.
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        movieNameLabel.text = "Movie Name: " + movieType[indexPath.row].title
        movieRatingLabel.text = "Movie Rating: " + movieType[indexPath.row].movieRating
        movieBoxOfficeLabel.text = "Box Office Collection: " + movieType[indexPath.row].boxOffice
      movieYearLabel.text = "Movie Released Year: " + movieType[indexPath.row].releasedYear
        moviePlotLabel.text = "Plot: " +  movieType[indexPath.row].moviePlot
    let cast : [String] = movieType[indexPath.row].cast
        movieCastLabel.text = "Cast: " + cast.joined(separator: ", ")
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
