//
//  ViewController.swift
//  ContactListApp
//
//  Created by Naguru,Rehana on 4/19/22.
//

import UIKit
import FirebaseDatabase
class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contactNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableViewOutlet.dequeueReusableCell(withIdentifier: "contactCell", for: indexPath)
        cell.textLabel?.text = contactNames[indexPath.row]
        
        return cell
        
    }
   
    

    @IBOutlet weak var tableViewOutlet: UITableView!
    var contactNames : [String] = []
    var contacts = NSDictionary()
    override func viewDidLoad() {
        
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableViewOutlet.delegate = self
        tableViewOutlet.dataSource = self
        fetchData()
        
    }
    func fetchData(){
        //Create a reference for database
        
        let  databaseRef = Database.database().reference()
        
        databaseRef.observeSingleEvent(of: .value) {
            snapshot in
            self.contacts = snapshot.value as! NSDictionary
            
            self.contactNames = self.contacts.allKeys as! [String]
            
            // reload the data
            self.tableViewOutlet.reloadData();

            print("in fetch data")
            print("contact values are \(self.contacts)")
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("in prepare method")
        let transition = segue.identifier
        if transition == "contactDetailsSegue"{
            let destination = segue.destination as! ResultViewController
            let contactClicked = contactNames[(tableViewOutlet.indexPathForSelectedRow?.row)!]
            print("here")
            print(self.contacts)
            for (key, value) in self.contacts {
                print("key value is \(key)")
                if key as! String == contactClicked{
                    for (key1, value1) in value as! [String:Any]{
                        if key1 == "email"{
                            destination.email = value1 as! String
                        }
                        else if key1 == "phoneNum"{
                            destination.phoneNum = value1 as! Int
                        }
                    }
                }
                print(key)  // this is string
                print(value)  // This is Dictionary
            }
        }
    }
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        print("in prepare method")
//    }

}

