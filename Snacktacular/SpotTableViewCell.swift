//
//  SpotTableViewCell.swift
//  Snacktacular
//
//  Created by Connor Goodman on 10/31/21.
//

import UIKit
import CoreLocation

class SpotTableViewCell: UITableViewCell {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ratingLabel: UILabel!
    @IBOutlet weak var distanceLabel: UILabel!
    
    var currentLocation: CLLocation!
    var spot: Spot! {
        didSet {
            nameLabel.text = spot.name
            ratingLabel.text = "Avg. Rating: \(spot.averageRating)"
            
            guard let currentLocation = currentLocation else {
                distanceLabel.text = "Distance: -.-"
                return
            }
            let distanceInMeters = spot.location.distance(from: currentLocation)
            let distanceInMiles = ((distanceInMeters * 0.00062137) * 10).rounded()/10
            distanceLabel.text = "Distance: \(distanceInMiles) miles"
        }
    }
}
