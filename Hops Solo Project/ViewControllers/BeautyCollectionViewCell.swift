//
//  BeautyCollectionViewCell.swift
//  Hops Solo Project
//
//  Created by Kary Martinez on 11/7/19.
//  Copyright © 2019 Kary Martinez. All rights reserved.
//

import UIKit

class BeautyCollectionViewCell: UICollectionViewCell {
    
    lazy var imageView: UIImageView = {
        let  Image = UIImageView()
        Image.translatesAutoresizingMaskIntoConstraints = false
        return Image
    }()
    
    
    lazy var MakeupLabel: UILabel = {
        let label = UILabel()
        label.textColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
        return label
    }()
    
    func setImage() {
        NSLayoutConstraint.activate([
            
            imageView.centerXAnchor.constraint(equalTo: imageView.centerXAnchor),
            imageView.centerYAnchor.constraint(equalTo: imageView.centerYAnchor, constant: -250),
            imageView.widthAnchor.constraint(equalToConstant: 100),
            imageView.heightAnchor.constraint(equalToConstant: 100)
        ])
        
    }
    
    
    func setlabel() {
        NSLayoutConstraint.activate([
            
           MakeupLabel.centerXAnchor.constraint(equalTo: MakeupLabel.centerXAnchor),
            MakeupLabel.centerYAnchor.constraint(equalTo: imageView.centerYAnchor, constant: -250),
            MakeupLabel.widthAnchor.constraint(equalToConstant: 100),
           MakeupLabel.heightAnchor.constraint(equalToConstant: 100)
        ])
        
    }
    
    
  
    

    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .orange
        setImage()
        setlabel()
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}







