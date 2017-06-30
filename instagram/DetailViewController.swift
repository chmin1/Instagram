//
//  DetailViewController.swift
//  instagram
//
//  Created by Chavane Minto on 6/29/17.
//  Copyright © 2017 Chavane Minto. All rights reserved.
//

import UIKit
import Parse
import ParseUI

class DetailViewController: UIViewController {

    @IBOutlet weak var postImage: PFImageView!
    
    @IBOutlet weak var captionLabel: UILabel!
    
    @IBOutlet weak var authorLabel: UILabel!
    
    @IBOutlet weak var timeStampLabel: UILabel!
    
    var posts: PFObject!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.postImage.file = posts["media"] as? PFFile
        self.captionLabel.text = posts["caption"] as? String
        let author = posts["author"] as! PFUser
        
        self.authorLabel.text = author.username! + ":"
        
        if let date = posts.createdAt {
            let dateFormatter = DateFormatter()
            dateFormatter.dateStyle = .short
            dateFormatter.timeStyle = .short
            let dateString = dateFormatter.string(from: date)
            timeStampLabel.text = dateString
        }
        self.postImage.loadInBackground()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
