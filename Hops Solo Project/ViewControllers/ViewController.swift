//
//  ViewController.swift
//  Hops Solo Project
//
//  Created by Kary Martinez on 11/1/19.
//  Copyright © 2019 Kary Martinez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    lazy var LoginButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
        
    }()
    
    
    
    
    lazy var bunnyEars: UIImageView = {
        let bunnyEarsImage = UIImageView()
        bunnyEarsImage.image = UIImage(named: "bunny ears")
        bunnyEarsImage.translatesAutoresizingMaskIntoConstraints = false
        return bunnyEarsImage
    }()

    
    lazy var BrandLabel: UILabel = {
        let label = UILabel()
        label.textColor = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
        label.text = "HOPS"
        label.font = UIFont(name: "Optima-BOld", size: 45)
        label.backgroundColor = .white
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var loginLabel: UILabel = {
         let label = UILabel()
         label.textColor = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
         label.text = "Login"
         label.font = UIFont(name: "Optima-BOld", size: 25)
         label.backgroundColor = .white
         label.textAlignment = .center
         label.translatesAutoresizingMaskIntoConstraints = false
         return label
     }()
   
    
    func setBrandLabel() {
   NSLayoutConstraint.activate([
            BrandLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            BrandLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -150),
            BrandLabel.widthAnchor.constraint(equalToConstant: 130),
            BrandLabel.heightAnchor.constraint(equalToConstant: 35)
        ])
    }
    
    func setImage() {
      NSLayoutConstraint.activate([
              bunnyEars.centerXAnchor.constraint(equalTo: view.centerXAnchor),
              bunnyEars.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -250),
            bunnyEars.widthAnchor.constraint(equalToConstant: 100),
             bunnyEars.heightAnchor.constraint(equalToConstant: 100)
           ])
        
    }
 
    var secondVC = CatViewController()
        let userEmail:String = "karyMartinez@pursuit.org"
        let userPassword:String = "kary123"
        var name:String = ""
    
    lazy var LoginTextField: UITextField = {
        let textField = UITextField()
        textField .translatesAutoresizingMaskIntoConstraints = false
        textField .placeholder = "Email"
        textField .borderStyle = .none
        textField .backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        textField.setUnderLine()
        var bottomLine = CALayer()
        
        //    textView.delegate = self
        return textField
        
    }()
    
    lazy var passwordTextField: UITextField = {
        let pstextField = UITextField()
        pstextField.translatesAutoresizingMaskIntoConstraints = false
        pstextField.textColor = .black
        pstextField.placeholder = "Password"
        pstextField.borderStyle = .none
        pstextField.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        return pstextField
    }()
       
    //MARK:   CONSTRAINTS
      private func setTextFieldConstraints() {
           NSLayoutConstraint.activate([
              LoginTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
              LoginTextField.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -40),
              LoginTextField.widthAnchor.constraint(equalToConstant: 200),
               LoginTextField.heightAnchor.constraint(equalToConstant: 35)
           ])
       }

    private func setPSTextFieldConstraints() {
            NSLayoutConstraint.activate([
              passwordTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
              passwordTextField.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 60),
               passwordTextField.widthAnchor.constraint(equalToConstant: 200),
                passwordTextField.heightAnchor.constraint(equalToConstant: 35)
            ])
        }

    private func setLoginTextFieldConstraints() {
              NSLayoutConstraint.activate([
                LoginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
               LoginButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 150),
               LoginButton.widthAnchor.constraint(equalToConstant: 130),
                LoginButton.heightAnchor.constraint(equalToConstant: 35)
              ])
          }
    
    private func setLoginLabelConstraints() {
                NSLayoutConstraint.activate([
                  loginLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                 loginLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 150),
                 loginLabel.widthAnchor.constraint(equalToConstant: 100),
                 loginLabel.heightAnchor.constraint(equalToConstant: 35)
                ])
            }
    
    //MARK: ViewDidLoad
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        addSubviews()
        setBrandLabel()
        setImage()
        setTextFieldConstraints()
        setPSTextFieldConstraints()
        setLoginTextFieldConstraints()
        setLoginLabelConstraints()

         navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Skip", style: .plain, target: self, action: #selector(continueButtonPressed))
    }
    

    
    @objc private func navigateScreen() {
         self.navigationController?.pushViewController(CatViewController(), animated: true)
     }
    
    @objc func continueButtonPressed(){
         self.navigationController?.pushViewController(CatViewController(), animated: true)
        //TODO: transition to a controller where you can create ToDos
    }
  
    //MARK: AddSubviews
    
    private func addSubviews() {
        self.view.addSubview(BrandLabel)
        self.view.addSubview(bunnyEars)
        self.view.addSubview(LoginTextField)
        self.view.addSubview(passwordTextField)
        self.view.addSubview(LoginButton)
        self.view.addSubview(loginLabel)
     
    }

}

//MARK:  EXTENSIONS
extension UITextField {
    func setUnderLine() {
        let border = CALayer()
        let width = CGFloat(0.5)
        border.borderColor = UIColor.black.cgColor
        border.frame = CGRect(x: 0, y: self.frame.size.height - width, width:  self.frame.size.width-10, height: self.frame.size.height)
        
        border.borderWidth = width
        self.layer.addSublayer(border)
        self.layer.masksToBounds = true
    }
}
