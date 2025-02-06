//
//  ViewController.swift
//  CollectionViewFlowlayoutPart2
//
//  Created by admin34 on 22/10/24.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    var dataModel: DataModel = DataModel()
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self
        collectionView.delegate = self
        
        if let layout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            layout.estimatedItemSize = .zero
            layout.minimumInteritemSpacing = 5
        }
        
        collectionView.setCollectionViewLayout(generateLayout(), animated: true)
    }
    
    func generateLayout() -> UICollectionViewCompositionalLayout {
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .fractionalHeight(1.0))
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        
        let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .absolute(100.0))
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitem: item, count: 2)
        group.interItemSpacing = NSCollectionLayoutSpacing.fixed(10.0)
        
        let section = NSCollectionLayoutSection(group: group)
        section.interGroupSpacing = 20
        section.contentInsets = NSDirectionalEdgeInsets(top: 15, leading: 15, bottom: 15, trailing: 15)
        
        return UICollectionViewCompositionalLayout(section: section)
    }
    
    // Collection view data source methods
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        dataModel.getPhotos().count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "wordCell", for: indexPath)
        let photoData = dataModel.getPhoto(at: indexPath.row)
        
        // Configure cell appearance
        cell.layer.cornerRadius = 10
        cell.backgroundColor = UIColor.white
        cell.layer.shadowColor = UIColor.black.cgColor
        cell.layer.shadowOffset = CGSize(width: 1.0, height: 4.0)
        cell.layer.shadowRadius = 2.0
        cell.layer.shadowOpacity = 0.5
        cell.layer.masksToBounds = false
        
        // Configure cell content
        if let wordCell = cell as? WordCollectionViewCell {
            wordCell.imageView.image = UIImage(named: photoData.id)
            wordCell.nameLabel.text = photoData.name // Set name label with photo name
        }
        
        return cell
    }
    
    // Collection view layout delegate method for cell size
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 180, height: 100)
    }
}
