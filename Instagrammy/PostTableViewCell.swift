//
//  PostTableViewCell.swift
//  Instagrammy
//
//  Created by Sagar  on 3/5/16.
//  Copyright © 2016 Sagar . All rights reserved.
//

import UIKit
import Parse
import ParseUI

class PostTableViewCell: UITableViewCell {
    @IBOutlet weak var postImage: PFImageView!
    @IBOutlet weak var captionLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    var caption: String? {
            didSet {
                captionLabel.text = caption
            }
        }
    
    var postPic: PFFile! {
        didSet {
            postPic?.getDataInBackgroundWithBlock({ (data: NSData?, error: NSError?) -> Void in
                if error == nil {
                    self.postImage.image = UIImage(data: data!)!
                }
                else {
                    print("error")
                }
            })
        }
    }

    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
