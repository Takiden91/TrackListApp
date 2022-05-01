//
//  TrackListViewController.swift
//  TrackListApp
//
//  Created by mac on 01.05.2022.
//

import UIKit

class TrackListViewController: UITableViewController {
    
    var trackList = [
        "No Limits - Royal Deluxe - Savages" ,
        "Painted Dreams - Unlike Pluto - Painted Dreams",
        "Nightcore - la di die - Zen - Kun",
        "This Is It - Oh the Larceny - Blood Is Rebel",
        "Днями-ночами - Pyrokinesis и МУККА",
        "No Limits - Royal Deluxe - Savages" ,
        "Painted Dreams - Unlike Pluto - Painted Dreams",
        "Nightcore - la di die - Zen - Kun",
        "This Is It - Oh the Larceny - Blood Is Rebel",
        "Днями-ночами - Pyrokinesis и МУККА",
        "No Limits - Royal Deluxe - Savages" ,
        "Painted Dreams - Unlike Pluto - Painted Dreams",
        "Nightcore - la di die - Zen - Kun",
        "This Is It - Oh the Larceny - Blood Is Rebel",
        "Днями-ночами - Pyrokinesis и МУККА",
]

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.leftBarButtonItem = editButtonItem
    }
    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return trackList.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "trackName", for: indexPath)
        cell.imageView?.image = UIImage(named: trackList[indexPath.row])
        cell.textLabel?.text = trackList[indexPath.row]
        cell.textLabel?.numberOfLines = 0

        return cell
    }
    
    
    
    // MARK: Table view delegate
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
     
    override func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        let currenTrack = trackList.remove(at: sourceIndexPath.row)
        trackList.insert(currenTrack, at: destinationIndexPath.row)
        tableView.reloadData()
    }
    override func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        .none
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow {
            let detailVC = segue.destination as! DetailViewController
            detailVC.trackName = trackList[indexPath.row]
        }
    }
    

}

