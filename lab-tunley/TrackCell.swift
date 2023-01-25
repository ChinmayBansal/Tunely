//
//  TrackCell.swift
//  lab-tunley
//
//  Created by Chinmay Bansal on 1/25/23.
//

import UIKit
import Nuke

class TrackCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configure(with track: Track) {
        trackNameLabel.text = track.trackName
        artistNameLabel.text = track.artistName
        
        Nuke.loadImage(with: track.artworkUrl100, into: trackImageView)
    }

    @IBOutlet weak var trackImageView: UIImageView!
    
    
    @IBOutlet weak var trackNameLabel: UILabel!
    
    @IBOutlet weak var artistNameLabel: UILabel!
    
}
