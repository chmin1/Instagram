//
//  InstaCell.swift
//  instagram
//
//  Created by Chavane Minto on 6/28/17.
//  Copyright © 2017 Chavane Minto. All rights reserved.
//

import UIKit
import Parse
import ParseUI

class InstaCell: UITableViewCell {

    @IBOutlet weak var instaImage: PFImageView!
    
    @IBOutlet weak var caption: UILabel!
    
    var instagramPost: PFObject! {
        didSet {
            self.instaImage.file = instagramPost["media"] as? PFFile
            self.caption.text = instagramPost["caption"] as! String
            self.instaImage.loadInBackground()
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
