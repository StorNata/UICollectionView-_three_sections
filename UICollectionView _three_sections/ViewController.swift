//
//  ViewController.swift
//  UICollectionView _three_sections
//
//  Created by Nataliia Storozheva on 13.06.2020.
//  Copyright © 2020 Nataliia Storozheva. All rights reserved.
//

import UIKit

let spacing: CGFloat = 20
//let minimumCellWidth: CGFloat = 100

class ViewController: UIViewController {
    @IBOutlet var collectionView: UICollectionView?
    @IBOutlet var dataSours: UICollectionViewDataSource?
    
    var cellColor = true
    private let dataSource: [TextModel] = TextModel.data()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "HW - Three sections"
        
        self.collectionView?.register(CollectionCell1.self, forCellWithReuseIdentifier: "cell_id_1")
        self.collectionView?.register(UINib(nibName: "RectangleCell", bundle: nil), forCellWithReuseIdentifier: "cell_id_2")
        self.collectionView?.register(UINib(nibName: "TextCell", bundle: nil), forCellWithReuseIdentifier: "cell_id_3")
        
        
        let layout = collectionView?.collectionViewLayout
        
        
    }
    
}

extension ViewController: UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if section == 0 {
            return 4
        } else if section == 1{
            return 2
        } else {
            return dataSource.count
        }
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        switch indexPath.section {
            
        case 1:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell_id_2", for: indexPath)
            
            return cell
        case 2:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell_id_3", for: indexPath)
            
            if let cell = cell as? CollectionTextCell {
                cell.textModel = dataSource[indexPath.item]
            }
            return cell
        default:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell_id_1", for: indexPath)
            cell.backgroundColor = .yellow
            return cell
        }
    }
}

extension ViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return spacing
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return spacing
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: spacing, left: spacing, bottom: spacing, right: spacing)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        //
        
        switch indexPath.section {
            
        case 0:
            let columCount = UIDevice.current.userInterfaceIdiom == UIUserInterfaceIdiom.phone ? 4 : 4
            
            
            let cellWidth = (collectionView.frame.size.width - 2 * spacing - CGFloat((columCount - 1)) * spacing) / CGFloat(columCount)
            
            
            func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
                return UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
            }
            return CGSize.init(width: cellWidth - 0.5, height: cellWidth)
        case 1:
            let columCount = UIDevice.current.userInterfaceIdiom == UIUserInterfaceIdiom.phone ? 2 : 4
            //
//                             return CGSize(width: 100,
//                             height: collectionView.frame.size.width * 2)
            //
            let cellWidth = (collectionView.frame.size.width - 2 * spacing - CGFloat((columCount - 1)) * spacing) / CGFloat(columCount)


            func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
                return UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
            }
            return CGSize.init(width: cellWidth - 0.5, height: cellWidth)
            
        default:
                        let columCount = UIDevice.current.userInterfaceIdiom == UIUserInterfaceIdiom.phone ? 1 : 2
            
            
                         let cellWidth = (collectionView.frame.size.width - 2 * spacing - CGFloat((columCount - 1)) * spacing) / CGFloat(columCount)
            
            
            func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
                return UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
            }
            return CGSize.init(width: cellWidth - 0.5, height: cellWidth)
            
        }
        
    }
    //MARK: - UICollectionViewDelegate
       func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
           print(indexPath)
       }
}


