//
//  CollectionViewCell3.swift
//  UICollectionView _three_sections
//
//  Created by Nataliia Storozheva on 13.06.2020.
//  Copyright © 2020 Nataliia Storozheva. All rights reserved.
//

import UIKit
 
class CollectionTextCell: UICollectionViewCell {
    
    @IBOutlet var textLabel: UILabel?
    
    var textModel: TextModel? {
        didSet {
            textLabel?.text = textModel?.title
            textLabel?.textColor = textModel?.color
        }
    }
    
}
