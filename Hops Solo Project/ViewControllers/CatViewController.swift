//
//  LoginViewController.swift
//  Hops Solo Project
//
//  Created by Kary Martinez on 11/4/19.
//  Copyright © 2019 Kary Martinez. All rights reserved.
//

import UIKit


class CatViewController: UIViewController {
    
    
    lazy var myView: UIView = { [unowned self] in
         let view = UIView()
         view.backgroundColor = .green
         view.layer.cornerRadius = view.frame.height / 2
        view.translatesAutoresizingMaskIntoConstraints = false
         return view
     }()
     


    private func setViewOneConstraints() {
         NSLayoutConstraint.activate([
                    myView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                   myView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -250),
                 myView.widthAnchor.constraint(equalToConstant: 100),
                  myView.heightAnchor.constraint(equalToConstant: 100)
                 ])
          }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setViewOneConstraints()

    }

  private func addSubview() {
    self.view.addSubview(myView)
       
    }
}
