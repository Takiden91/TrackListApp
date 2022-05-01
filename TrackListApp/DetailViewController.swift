//
//  DetailViewController.swift
//  TrackListApp
//
//  Created by mac on 01.05.2022.
//

import UIKit

class DetailViewController: UIViewController {

    
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var trackNameLable: UILabel!
    
    
    var trackName: String!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        imageView.image = UIImage(named: trackName)
        trackNameLable.text = trackName
        trackNameLable.numberOfLines = 0
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
