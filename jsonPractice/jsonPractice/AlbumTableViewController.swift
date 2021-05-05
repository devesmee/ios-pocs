//
//  AlbumTableViewController.swift
//  jsonPractice
//
//  Created by Student on 19/09/2019.
//  Copyright © 2019 Esmee Kluijtmans. All rights reserved.
//

import UIKit

class AlbumTableViewController: UITableViewController {

    var albums = [Album]()
    
    @IBOutlet weak var idLabel: UILabel?
    @IBOutlet weak var titleLabel: UILabel?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let url = URL(string: "https://jsonplaceholder.typicode.com/photos")
        // http request
        URLSession.shared.dataTask(with: url!) { (data, response, error)
            in
            
            if error != nil {
                print("\(error?.localizedDescription)")
                return
            }
            
            do {
                let albumData = try JSONDecoder().decode([Album].self, from: data!)
                
                DispatchQueue.main.async {
                    self.albums = albumData
                    self.tableView.reloadData()
                }
                
            }catch let err{
                print("\(err)")
            }
            
            }.resume()
        // http response
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return self.albums.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "albumCell", for: indexPath)

        //cell.imageView?.image = UIImage(: self.albums[indexPath.row].thumbnailUrl)
        DispatchQueue.main.async {
            
        
        self.idLabel?.text = String(self.albums[indexPath.row].id)
        self.titleLabel?.text = self.albums[indexPath.row].title
//        cell.textLabel?.text = self.albums[indexPath.row].title
        }
        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
