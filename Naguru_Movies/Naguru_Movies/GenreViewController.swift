//
//  ViewController.swift
//  Naguru_Movies
//
//  Created by student on 4/28/22.
//

import UIKit

class GenreViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies_category.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = genreTableView.dequeueReusableCell(withIdentifier: "sectionCell", for: indexPath)
        cell.textLabel?.text = movies_category[indexPath.row].category
        return cell
    }
    let movies_category = movie_data
    
    @IBOutlet weak var genreTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        genreTableView.dataSource = self
        genreTableView.delegate = self
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transition = segue.identifier
        let destination = segue.destination as! MoviesViewController
        destination.movieType = movies_category[genreTableView.indexPathForSelectedRow!.row].movies
    }
}

