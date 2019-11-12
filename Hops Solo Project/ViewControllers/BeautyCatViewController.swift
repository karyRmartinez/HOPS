//
//  BeautyCatViewController.swift
//  Hops Solo Project
//
//  Created by Kary Martinez on 11/7/19.
//  Copyright © 2019 Kary Martinez. All rights reserved.
//

import UIKit

class BeautyCatViewController: UIViewController {

    lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        
        let BeautyView = UICollectionView(frame: CGRect(x: 0, y: 0, width: 0, height: 0), collectionViewLayout: layout)
        
        BeautyView .register(BeautyCollectionViewCell.self, forCellWithReuseIdentifier: "theCell")
//        BeautyView .dataSource = self
//        BeautyView .delegate = self
        BeautyView.backgroundColor = .white
        
        
        
        return BeautyView
        
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
    }


}
//
//extension BeautyCatViewController: UICollectionViewDelegate, UICollectionViewDataSource {
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        <#code#>
//    }
//
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        <#code#>
//    }
//
//
//}
