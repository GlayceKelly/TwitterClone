//
//  TweetCellTeste.swift
//  TwitterClone
//
//  Created by Glayce Kelly on 14/09/20.
//  Copyright © 2020 Glayce. All rights reserved.
//

import UIKit

class TweetCell: UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .red
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
