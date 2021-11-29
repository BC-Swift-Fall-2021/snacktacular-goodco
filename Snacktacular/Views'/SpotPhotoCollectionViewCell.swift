//
//  SpotPhotoCollectionViewCell.swift
//  Snacktacular
//
//  Created by Connor Goodman on 11/15/21.
//

import UIKit
import SDWebImage

class SpotPhotoCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var photoImageView: UIImageView!
    
    var spot: Spot!
    var photo: Photo! {
        didSet {
            
            if let url = URL(string: self.photo.photoURL) {
                self.photoImageView.sd_imageTransition = .fade
                self.photoImageView.sd_imageTransition?.duration = 0.2
                self.photoImageView.sd_setImage(with: url)
            } else {
                print("ERROR: URL didn't work \(self.photo.photoURL)")
                self.photo.loadImage(spot: self.spot) { success in
                    self.photo.saveData(spot: self.spot) { success in
                        print("Image updated with URL \(self.photo.photoURL)")
                    }
                }
            }
            
            
        }
    }
    
}
