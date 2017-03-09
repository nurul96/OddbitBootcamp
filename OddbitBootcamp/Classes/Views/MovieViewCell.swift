//
//  MovieViewCell.swift
//  OddbitBootcamp
//
//  Created by Bayu Yasaputro on 3/9/17.
//  Copyright © 2017 DyCode. All rights reserved.
//

import UIKit

class MovieViewCell: UICollectionViewCell {
    
    @IBOutlet weak var loadingIndicator: UIActivityIndicatorView!
    @IBOutlet weak var movieImageView: UIImageView!{
        didSet{
            movieImageView.image = UIImage(named: "image")
        }
    }
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descLabel: UILabel!
    
}
