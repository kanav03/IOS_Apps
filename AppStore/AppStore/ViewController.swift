//
//  ViewController.swift
//  AppStore
//
//  Created by admin34 on 23/10/24.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource {
    @IBOutlet weak var collectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self
        collectionView.setCollectionViewLayout(generatedLayout(), animated: true)
        // Do any additional setup after loading the view.
    }
    
    
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return DataModel.sections.count
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if section == 0 {
            return DataModel.apps.count
        }
        else if section == 1{
            return 1
        }
        else if section == 2{
            return DataModel.standardApps.count
        }
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if indexPath.section == 0 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "promoted", for: indexPath)
            let app = DataModel.apps[indexPath.row]
            if let cell = cell as? PromotedCollectionViewCell{
                cell.titleLabel.text = app.title
                cell.headingLabel.text = app.subTitle
                cell.subTitleLabel.text = app.subTitle
                cell.imageView.image = UIImage(named: app.image)
                cell.imageView.layer.cornerRadius = 20
                

            }
            return cell
        }else if indexPath.section == 1 || indexPath.section == 2{
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "standard", for: indexPath)
            if let cell = cell as? StandardCollectionViewCell{
                let app = DataModel.standardApps[indexPath.row]
                cell.titleLabel.text = app.title
                cell.subTitleLabel.text = app.subTitle
                cell.imageView.image = UIImage(named: app.image)
                cell.imageView.layer.cornerRadius = 20
                return cell
                
            }
        }
        return UICollectionViewCell()
    }
    func generatedLayout()->UICollectionViewLayout{
        let layout = UICollectionViewCompositionalLayout{
            (section,env)-> NSCollectionLayoutSection? in
            
            let sectionType = DataModel.sections[section]
            switch sectionType{
            case.promoted,.categories:
                let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .fractionalHeight(1.0))
                let item = NSCollectionLayoutItem(layoutSize: itemSize)
                let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.9), heightDimension: .absolute(300))
                let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize,subitems: [item])
                let section = NSCollectionLayoutSection(group: group)
                section.orthogonalScrollingBehavior = .groupPagingCentered
                return section
                
            case .standard:
                let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .fractionalHeight(0.33))
                let item = NSCollectionLayoutItem(layoutSize: itemSize)
                let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.9), heightDimension: .absolute(300))
                let group = NSCollectionLayoutGroup.vertical(layoutSize: groupSize,subitem:item,count: 3)
                let section = NSCollectionLayoutSection(group: group)
                section.orthogonalScrollingBehavior = .groupPagingCentered
                return section
            }
        }
        return layout
    }
}

