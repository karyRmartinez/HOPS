//
//  LoginViewController.swift
//  Hops Solo Project
//
//  Created by Kary Martinez on 11/4/19.
//  Copyright © 2019 Kary Martinez. All rights reserved.
//

import UIKit


class CatViewController: UIViewController {
    
    
    lazy var myleftTop: UIView = { 
         let view = UIView()
         view.backgroundColor = .green
        view.layer.borderColor = UIColor.blue.cgColor
//         view.layer.cornerRadius = view.frame.height / 2
        view.translatesAutoresizingMaskIntoConstraints = false
         return view
     }()
    
        
        lazy var myleftView: UIView = {
             let view = UIView()
             view.backgroundColor = .green
            view.layer.borderColor = UIColor.blue.cgColor
    //         view.layer.cornerRadius = view.frame.height / 2
            view.translatesAutoresizingMaskIntoConstraints = false
             return view
         }()
    
       lazy var myrightView: UIView = {
             let view = UIView()
             view.backgroundColor = .green
            view.layer.borderColor = UIColor.blue.cgColor
    //         view.layer.cornerRadius = view.frame.height / 2
            view.translatesAutoresizingMaskIntoConstraints = false
             return view
         }()
     
       lazy var myrightBottomView: UIView = {
            let view = UIView()
            view.backgroundColor = .green
           view.layer.borderColor = UIColor.blue.cgColor
   //         view.layer.cornerRadius = view.frame.height / 2
           view.translatesAutoresizingMaskIntoConstraints = false
            return view
        }()


    private func setViewOneConstraints() {
  NSLayoutConstraint.activate([
           myleftTop.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: -100),
         myleftTop.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -130),
       myleftTop.widthAnchor.constraint(equalToConstant: 170),
         myleftTop.heightAnchor.constraint(equalToConstant: 100)
          ])
          }
    private func setleftViewConstraints() {
    NSLayoutConstraint.activate([
             myleftView.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 100),
           myleftView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -130),
       myleftView.widthAnchor.constraint(equalToConstant: 170),
          myleftView.heightAnchor.constraint(equalToConstant: 100)
            ])
            }
    
    private func setrightViewOConstraints() {
     NSLayoutConstraint.activate([
             myrightView.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: -100),
            myrightView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 50),
          myrightView.widthAnchor.constraint(equalToConstant: 170),
            myrightView.heightAnchor.constraint(equalToConstant: 100)
             ])
             }
    private func setrightbottomViewOConstraints() {
      NSLayoutConstraint.activate([
             myrightBottomView.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 100),
            myrightBottomView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 50),
         myrightBottomView.widthAnchor.constraint(equalToConstant: 170),
           myrightBottomView.heightAnchor.constraint(equalToConstant: 100)
              ])
              }
     
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        addSubview()
        setViewOneConstraints()
        setleftViewConstraints()
        setrightViewOConstraints()
        setrightbottomViewOConstraints()

        

    }

  private func addSubview() {
    self.view.addSubview(myleftTop)
    self.view.addSubview(myleftView)
    self.view.addSubview(myrightView)
    self.view.addSubview(myrightBottomView)
       
    }
}
