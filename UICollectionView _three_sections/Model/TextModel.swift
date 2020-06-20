//
//  TextModel.swift
//  UICollectionView _three_sections
//
//  Created by Nataliia Storozheva on 18.06.2020.
//  Copyright © 2020 Nataliia Storozheva. All rights reserved.
//

import UIKit
 
struct TextModel {
    let title: String
    let color: UIColor
    
    static func data() -> [TextModel] {
        return [TextModel(title: "Sudan", color: .random),
        TextModel(title: "USA", color: .random),
        TextModel(title: "Austia", color: .random),
        TextModel(title: "Japan", color: .random),
        TextModel(title: "Sudan", color: .random),
        TextModel(title: "Spain", color: .random),
        TextModel(title: "Ukraine", color: .random),
        TextModel(title: "UK", color: .random),
        TextModel(title: "Germany", color: .random),
        TextModel(title: "Niger", color: .random),
        TextModel(title: "Poland", color: .random),
        TextModel(title: "Norway", color: .random),
        TextModel(title: "Brazil", color: .random),
        TextModel(title: "China", color: .random)]
    }
}
extension UIColor {
    static var random: UIColor {
        get {
            return UIColor(red: CGFloat(Float.random(in: 0...255)/255),
                           green: CGFloat(Float.random(in: 0...255)/255),
                           blue: CGFloat(Float.random(in: 0...255)/255),
                           alpha: 1)
        }
    }
}
