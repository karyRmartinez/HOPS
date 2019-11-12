//
//  ViewController.swift
//  Hops Solo Project
//
//  Created by Kary Martinez on 11/1/19.
//  Copyright © 2019 Kary Martinez. All rights reserved.
//

import UIKit
import FirebaseAuth

class ViewController: UIViewController {

// MARK: LOGIN BUTTON
    lazy var LoginButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(tryLogin), for: .touchUpInside)
                  button.isEnabled = false
        return button
        
    }()
   
    
    //MARK: BUNNY EARS IMAGE
    
    lazy var bunnyEars: UIImageView = {
        let bunnyEarsImage = UIImageView()
        bunnyEarsImage.image = UIImage(named: "bunny ears")
        bunnyEarsImage.translatesAutoresizingMaskIntoConstraints = false
        return bunnyEarsImage
    }()

    //MARK: LABELS
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

    //MARK: UITextField
 
    lazy var LoginTextField: UITextField = {
        let textField = UITextField()
        textField .translatesAutoresizingMaskIntoConstraints = false
        textField .placeholder = "Email"
        textField .borderStyle = .none
        textField .backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        textField.layer.borderColor = UIColor.black.cgColor
          textField.addTarget(self, action: #selector(validateFields), for: .editingChanged)
        return textField
        
    }()
    
    lazy var passwordTextField: UITextField = {
        let pstextField = UITextField()
        pstextField.translatesAutoresizingMaskIntoConstraints = false
        pstextField.textColor = .black
        pstextField.isSecureTextEntry = true
        pstextField.placeholder = "Password"
        pstextField.borderStyle = .none
        pstextField.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
         pstextField.addTarget(self, action: #selector(validateFields), for: .editingChanged)
        return pstextField
    }()
    
    
    
    lazy var createAccountButton: UIButton = {
        let button = UIButton(type: .system)
        let attributedTitle = NSMutableAttributedString(string: "Dont have an account?  ", attributes: [NSAttributedString.Key.font: UIFont(name: "Verdana", size: 12)!, NSAttributedString.Key.foregroundColor: UIColor.white])
        attributedTitle.append(NSAttributedString(string: "Sign Up", attributes: [NSAttributedString.Key.font: UIFont(name: "Verdana-Bold", size: 14)!, NSAttributedString.Key.foregroundColor:  UIColor(red: 0/255, green: 180/255, blue: 0/255, alpha: 1)]))
        button.setAttributedTitle(attributedTitle, for: .normal)
        button.addTarget(self, action: #selector(showSignUp), for: .touchUpInside)
        return button
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

    private func setEmailTextFieldConstraints() {
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
    
    private func setupLoginStackView() {
        let stackView = UIStackView(arrangedSubviews: [LoginTextField, passwordTextField,LoginButton])
        stackView.axis = .vertical
        stackView.spacing = 15
        stackView.distribution = .fillEqually
        self.view.addSubview(stackView)
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([stackView.bottomAnchor.constraint(equalTo: createAccountButton.topAnchor, constant: -50),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
        stackView.heightAnchor.constraint(equalToConstant: 130)])
    }
    
    private func setupCreateAccountButton() {
        view.addSubview(createAccountButton)
        
        createAccountButton.translatesAutoresizingMaskIntoConstraints = false
   NSLayoutConstraint.activate([
                createAccountButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
              createAccountButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 100),
               createAccountButton.widthAnchor.constraint(equalToConstant: -150),
              createAccountButton.heightAnchor.constraint(equalToConstant: 35)
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
        setEmailTextFieldConstraints()
        setLoginLabelConstraints()
        setupCreateAccountButton()
          

         navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Skip", style: .plain, target: self, action: #selector(continueButtonPressed))
        
        
         
    }
        
    @objc func tryLogin() {
        guard let email = LoginTextField.text, let password = passwordTextField.text else {
            showAlert(with: "Error", and: "Please fill out all fields.")
            return
        }
        
        //MARK: TODO - remove whitespace (if any) from email/password
        
        guard email.isValidEmail else {
            showAlert(with: "Error", and: "Please enter a valid email")
            return
        }
        
        guard password.isValidPassword else {
            showAlert(with: "Error", and: "Please enter a valid password. Passwords must have at least 8 characters.")
            return
        }
        
        FirebaseAuthService.manager.loginUser(email: email.lowercased(), password: password) { (result) in
            self.handleLoginResponse(with: result)
        }
    }
        
        
        @objc func validateFields() {
            guard LoginTextField.hasText, passwordTextField.hasText else {
                LoginButton.backgroundColor = UIColor(red: 255/255, green: 67/255, blue: 0/255, alpha: 0.5)
               LoginButton.isEnabled = false
                return
            }
           LoginButton.isEnabled = true
           LoginButton.backgroundColor = UIColor(red: 255/255, green: 67/255, blue: 0/255, alpha: 1)
        }
 
    @objc private func navigateScreen() {
         self.navigationController?.pushViewController(CatViewController(), animated: true)
     }
    
    @objc func continueButtonPressed(){
         self.navigationController?.pushViewController(CatViewController(), animated: true)
        //TODO: transition to a controller where you can create ToDos
    }
  
    @objc func showSignUp() {
        let signupVC = SignUPViewController()
        signupVC.modalPresentationStyle = .formSheet
        present(signupVC, animated: true, completion: nil)
    }
    
    
    //MARK: Private methods
    
    private func showAlert(with title: String, and message: String) {
        let alertVC = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alertVC.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
        present(alertVC, animated: true, completion: nil)
    }

    
      private func handleLoginResponse(with result: Result<User, Error>) {
          switch result {
          case .failure(let error):
              showAlert(with: "Error", and: "Could not log in. Error: \(error)")
          case .success:
              guard let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
                  let sceneDelegate = windowScene.delegate as? SceneDelegate
                  else {
                      return
              }
              UIView.transition(with: self.view, duration: 0.1, options: .transitionFlipFromBottom, animations: {
                  sceneDelegate.window?.rootViewController = BeautyCatViewController()
              }, completion: nil)
          }
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
extension ViewController: UITextFieldDelegate {
    
}
