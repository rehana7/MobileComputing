//
//  MovieData.swift
//  Naguru_Movies
//
//  Created by student on 4/28/22.
//

import Foundation
import UIKit
struct Movie {
    let title:String
    let image:UIImage
    let releasedYear:String
    let movieRating:String
    let boxOffice:String
    let moviePlot: String
    var cast: [String]
}
struct Genre{
    var category:String
    var  movies : [Movie]
}
let movie_data = [ genre1, genre2, genre3]

let genre1: Genre = Genre(category: "Comedy", movies: [Movie(title: "Encanto ", image:UIImage(named: "encanto")!, releasedYear: "2021", movieRating:"8.5", boxOffice: "534M", moviePlot: "The Madrigals are an extraordinary family who live hidden in the mountains of Colombia in a charmed place called the Encanto. ", cast:["Stephanie Beatriz , Maluma"]),                   Movie(title: "TurningRed", image: UIImage(named: "turningRed")!, releasedYear: "2022", movieRating: "8.0", boxOffice: "453M", moviePlot: "Mei Lee is a 13-year-old girl who is torn between being her mother's obedient daughter and the chaos of her youth", cast: ["DomeeShi , Julia Cho"]),                       Movie(title: "FreeGuy", image: UIImage(named: "freeGuy")!, releasedYear: "2021", movieRating: "9.0", boxOffice: "542M", moviePlot: "When a bank teller discovers he's actually a background player in an open-world video game, he decides to become the hero of his own story -- one that he can rewrite himself.", cast: ["Ryan Reynolds, Jodie Comer"]),        Movie(title: "SuperBad", image: UIImage(named:"superBad")!, releasedYear: "2007", movieRating: "8.5", boxOffice: "452M", moviePlot: "Two inseparable best friends navigate the last weeks of high school and are invited to a gigantic house party", cast: ["Jonah Hill, Seth Rogen"]),                               Movie(title: "Sing2", image: UIImage(named: "sing2")!, releasedYear: "2021", movieRating: "8.5", boxOffice: "403.8M", moviePlot: "Can-do koala Buster Moon and his all-star cast of animal performers prepare to launch a dazzling stage extravaganza in the glittering entertainment capital of the world.", cast: ["Bono , Halsey"])])

let genre2: Genre = Genre(category: "Drama", movies: [Movie(title: "Citizen Kane", image:UIImage(named: "citizenKane")!, releasedYear: "1941", movieRating:"7.5", boxOffice: "344M", moviePlot: "Story of a reporter and his investigation. ", cast:["Orson Welles , Joseph Cotten"]),                   Movie(title: "Black Panther", image: UIImage(named: "blackPanther")!, releasedYear: "2018", movieRating: "9.0", boxOffice: "534M", moviePlot: "Story of the powerful enemy and T’Challa ", cast: ["Michael B.Jordan, Letitia Wright"]),          Movie(title: "Parasite", image: UIImage(named: "parasite")!, releasedYear: "2019", movieRating: "9.5", boxOffice: "465M", moviePlot: "Greed and class discrimination threaten the newly formed symbiotic relationship between the wealthy Park family and the destitute Kim clan.", cast: ["Song Kang-ho, Lee Sun-Kyun"]),  Movie(title: "Avengers", image: UIImage(named:"avengers")!, releasedYear: "2019", movieRating: "8.1", boxOffice: "552M", moviePlot: "When Thor's evil brother, Loki (Tom Hiddleston), gains access to the unlimited power of the energy cube called the Tesseract, Nick Fury (Samuel L. Jackson), director of S.H.I.E.L.D., initiates a superhero recruitment effort to defeat the unprecedented threat to Earth", cast: ["Robert Downey Jr. "]),                                                   Movie(title: "Casablanca", image: UIImage(named: "casablanca")!, releasedYear: "1943", movieRating: "8.5", boxOffice: "302M", moviePlot: "Rick Blaine (Humphrey Bogart), who owns a nightclub in Casablanca, discovers his old flame Ilsa (Ingrid Bergman) is in town with her husband ", cast: ["Victor Laszlo, Humphrey Bogart, Ingrid Bergman"])])


let genre3: Genre = Genre(category: "Horror", movies: [Movie(title: "The Ring ", image:UIImage(named: "ring")!, releasedYear: "2002", movieRating:"9.5", boxOffice: "434M", moviePlot: "a videotape filled with nightmarish images leads to a phone call foretelling the viewer's death in exactly seven days. Newspaper reporter Rachel Kelle  ", cast:["Naomi Watts, David Doorman "]),           Movie(title: "IT", image: UIImage(named: "it")!, releasedYear: "2017", movieRating: "8.5", boxOffice: "342M", moviePlot: "Seven young outcasts in Derry, Maine, are about to face their worst nightmare -- an ancient, shape-shifting evil that emerges from the sewer every 27 years to prey on the town's children.", cast: ["Bill Skarsgard, Sophia Lillis"]),                       Movie(title: "The Nun", image: UIImage(named: "nun")!, releasedYear: "2018", movieRating: "8.0", boxOffice: "352M", moviePlot: "When a young nun at a cloistered abbey in Romania takes her own life, a priest with a haunted past and a novitiate on the threshold of her final vows are sent by the Vatican to investigate. ", cast: ["Taissa Farming, Bonnie Aarons "]),        Movie(title: "The Conjurring", image: UIImage(named:"conjurring")!, releasedYear: "2013", movieRating: "7.5", boxOffice: "20M", moviePlot: "In 1970, paranormal investigators and demonologists Lorraine (Vera Farmiga) and Ed (Patrick Wilson) Warren are summoned to the home of Carolyn (Lili Taylor) and Roger (Ron Livingston) Perron", cast: ["Vera Farmiga, Patrick Wilson"]),                                     Movie(title: "Annabelle", image: UIImage(named: "annabelle")!, releasedYear: "2014", movieRating: "5.4", boxOffice: "257.6M", moviePlot: "One terrible night, devil worshippers invade their home and launch a violent attack", cast: ["Annabelle Wallis, Ward Horton"])])




