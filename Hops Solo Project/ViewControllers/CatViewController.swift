//
//  LoginViewController.swift
//  Hops Solo Project
//
//  Created by Kary Martinez on 11/4/19.
//  Copyright © 2019 Kary Martinez. All rights reserved.
//

import UIKit


class CatViewController: UIViewController {
    
//    lazy var tapGesture: UIGestureRecognizer = {
//        let tap = UITapGestureRecognizer(target: self, action: #selector(ViewTapped(_:)))
//        return tap
//    }()
    
    //MARK:  UIVIEWS
    
    lazy var myleftTop: UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
        view.layer.borderColor = UIColor.blue.cgColor // doesnt work
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(topLeftViewTapped(_:)))
        view.addGestureRecognizer(tapGesture)
        view.layer.cornerRadius = 10
        view.translatesAutoresizingMaskIntoConstraints = false
        
        
        return view
        
    }()
    
    lazy var myleftView: UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
        view.layer.borderColor = UIColor.blue.cgColor
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(myleftViewTapped(_:)))
               view.addGestureRecognizer(tapGesture)
        view.layer.cornerRadius = 10
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var myrightView: UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
            view.layer.borderColor = UIColor.blue.cgColor
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(myrightViewTapped(_:)))
                      view.addGestureRecognizer(tapGesture)
        view.layer.cornerRadius = 10
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var myrightBottomView: UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
        view.layer.borderColor = UIColor.blue.cgColor
        view.layer.cornerRadius = 10
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(bottomRightViewTapped(_:)))
        view.addGestureRecognizer(tapGesture)
       
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    //MARK: UIVIEW ACTIONS
    @objc func topLeftViewTapped(_ tapGesture: UITapGestureRecognizer) {
           let newViewController = BeautyCatViewController()
           self.navigationController?.pushViewController(newViewController, animated: true)
       }
       
       @objc func bottomRightViewTapped(_ tapGesture: UITapGestureRecognizer) {
//              let newViewController = BeautyCatViewController()
//              self.navigationController?.pushViewController(newViewController, animated: true)
          }
    @objc func myleftViewTapped(_ tapGesture: UITapGestureRecognizer) {
//  let newViewController = BeautyCatViewController()
//  self.navigationController?.pushViewController(newViewController, animated: true)
    }
    
    @objc func myrightViewTapped(_ tapGesture: UITapGestureRecognizer) {
//        let newViewController = BeautyCatViewController()
//        self.navigationController?.pushViewController(newViewController, animated: true)
    }
    
    //MARK: CONSTRAINTS
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
    //MARK: VIEWDIDLOAD
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        addSubview()
        setViewOneConstraints()
        setleftViewConstraints()
        setrightViewOConstraints()
        setrightbottomViewOConstraints()
    
    }
    
    //MARK:ADD SUBVIEWS
    private func addSubview() {
        self.view.addSubview(myleftTop)
        self.view.addSubview(myleftView)
        self.view.addSubview(myrightView)
        self.view.addSubview(myrightBottomView)
        
    }
}
