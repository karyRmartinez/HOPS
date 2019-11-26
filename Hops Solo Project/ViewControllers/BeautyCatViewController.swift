//
//  BeautyCatViewController.swift
//  Hops Solo Project
//
//  Created by Kary Martinez on 11/7/19.
//  Copyright © 2019 Kary Martinez. All rights reserved.
//

import UIKit

class BeautyCatViewController: UIViewController {
    
    var Makeup = [VeganMakeUpElement]() {
        didSet {
            collectionView.reloadData()
        }
    }
    

    lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        
        let BeautyView = UICollectionView(frame: CGRect(x: 0, y: 0, width: 0, height: 0), collectionViewLayout: layout)
        
        BeautyView .register(BeautyCollectionViewCell.self, forCellWithReuseIdentifier: "theCell")
        BeautyView .dataSource = self
        BeautyView .delegate = self
        BeautyView.backgroundColor = .white
        
        
        
        return BeautyView
        
    }()
    
    private func loadData() {
        MakeupAPIClient.manager.getElements { (result) in
            DispatchQueue.main.async {
                switch result {
                case .success(let MakeupFromOnline):
                    self.Makeup = MakeupFromOnline
                case .failure(let error):
                    print(error)
                }
            }
        }
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        loadData()
        
      
    }


}

extension BeautyCatViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return Makeup.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "theCell", for: indexPath) as! BeautyCollectionViewCell
        let currentMU = Makeup[indexPath.row]
        cell.MakeupLabel.text = currentMU.brand
        return cell
        
    }


}

extension BeautyCatViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 200, height: 200)
    }
}
