//
//  PostCollectionViewCell.swift
//  instagram
//
//  Created by Chavane Minto on 6/30/17.
//  Copyright © 2017 Chavane Minto. All rights reserved.
//

import UIKit
import Parse
import ParseUI

class PostCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var userPostImage: PFImageView!
    
    var instagramPost: PFObject! {
        didSet {
            self.userPostImage.file = instagramPost["media"] as? PFFile
            self.userPostImage.loadInBackground
        }
    }
    
}
