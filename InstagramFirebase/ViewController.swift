//
//  ViewController.swift
//  InstagramFirebase
//
//  Created by Tolerance on 2020/09/27.
//  Copyright © 2020 Tolerance. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //git commit
    let plusPhoButton: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(UIImage(named: "plus_photo")?.withRenderingMode(.alwaysOriginal), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let emailTextField: UITextField = {
        let tf = UITextField()
        tf.placeholder = "Email"
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.backgroundColor = UIColor(white: 0, alpha:0.03)
        tf.font = UIFont.systemFont(ofSize: 14)
        tf.borderStyle = .roundedRect
        return tf
    }()
    
    let usernameTextField: UITextField = {
        let tf = UITextField()
        tf.placeholder = "Username"
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.backgroundColor = UIColor(white: 0, alpha:0.03)
        tf.font = UIFont.systemFont(ofSize: 14)
        tf.borderStyle = .roundedRect
        return tf
    }()
    
    let passwordTextField: UITextField = {
        let tf = UITextField()
        tf.placeholder = "Password"
        tf.isSecureTextEntry = true
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.backgroundColor = UIColor(white: 0, alpha:0.03)
        tf.font = UIFont.systemFont(ofSize: 14)
        tf.borderStyle = .roundedRect
        return tf
    }()
    
    let signUpButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Sign up", for: .normal)
        button.backgroundColor = UIColor(red: 149/255, green: 204/255, blue: 244/255, alpha: 1)
        button.layer.cornerRadius = 5
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        button.setTitleColor(.white, for: .normal)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(plusPhoButton)
        plusPhoButton.heightAnchor.constraint(equalToConstant: 140).isActive = true
        plusPhoButton.widthAnchor.constraint(equalToConstant: 140).isActive = true
        plusPhoButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        plusPhoButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 40).isActive = true
        
        setupInputFields()
//
//        NSLayoutConstraint.activate([
//            emailTextField.topAnchor.constraint(equalTo: plusPhoButton.bottomAnchor, constant: 20),
//        emailTextField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 40),
//        emailTextField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -40),
//        emailTextField.heightAnchor.constraint(equalToConstant: 50)
//        ])
    }
    
    fileprivate func setupInputFields(){
        
        let stackView = UIStackView(arrangedSubviews: [emailTextField, usernameTextField, passwordTextField, signUpButton])
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.distribution = .fillEqually
        stackView.axis = .vertical
        stackView.spacing = 10
        view.addSubview(stackView)
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: plusPhoButton.bottomAnchor, constant: 20),
        stackView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 40),
        stackView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -40),
        stackView.heightAnchor.constraint(equalToConstant: 200)
        ])
        
    }
}

