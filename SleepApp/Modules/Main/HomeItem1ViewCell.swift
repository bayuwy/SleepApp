//
//  HomeItem1ViewCell.swift
//  SleepApp
//
//  Created by Bayu Yasaputro on 04/10/22.
//

import UIKit

class HomeItem1ViewCell: UICollectionViewCell {
    @IBOutlet weak var backgroundImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subtitleLabel: UILabel!
    @IBOutlet weak var durationLabel: UILabel!
    @IBOutlet weak var startButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        setup()
    }
    
    func setup() {
        backgroundImageView.layer.cornerRadius = 10
        backgroundImageView.layer.masksToBounds = true
        startButton.layer.cornerRadius = 15
        startButton.layer.masksToBounds = true
    }
}
