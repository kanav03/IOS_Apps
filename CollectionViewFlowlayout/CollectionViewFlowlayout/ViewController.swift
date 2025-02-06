//
//  ViewController.swift
//  CollectionViewFlowlayout
//
//  Created by admin34 on 21/10/24.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    

    @IBOutlet weak var collectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let flowLayout = collectionView.collectionViewLayout as!UICollectionViewFlowLayout
        flowLayout.estimatedItemSize = CGSize(width:50, height:50)
        // Do any additional setup after loading the view.
        collectionView.dataSource = self
        collectionView.delegate = self
    }
    
    func collectionView(_ collectionView:UICollectionView, layout collectionViewLayout:UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize{
        return CGSize(width: self.view.bounds.width - 40, height: 120)
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        200
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "item", for: indexPath)
        if let customCell = cell as? CustomCell{
            customCell.cellView.backgroundColor = randomColor
        }
        return cell
    }
    var randomColor:UIColor{
        let randomRed = CGFloat.random(in: 0...1)
        let randomGreen = CGFloat.random(in: 0...1)
        let randomBlue = CGFloat.random(in: 0...1)
        return UIColor(red:randomRed, green: randomGreen, blue: randomBlue, alpha: 1)
    }
    

}

