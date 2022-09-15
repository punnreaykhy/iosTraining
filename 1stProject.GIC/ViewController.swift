//
//  ViewController.swift
//  1stProject.GIC
//
//  Created by Khy Punnreay on 13/8/22.
//

import UIKit

class ViewController: UIViewController {
    
    override func loadView() {
        super.loadView()
        
        let redView = UIView()
        redView.backgroundColor = .red
        
        redView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(redView)
        
        redView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        redView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        redView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 10).isActive = true
        redView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        let blueView = UIView()
        blueView.backgroundColor = .blue
        blueView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(blueView)
        blueView.topAnchor.constraint(equalTo: redView.bottomAnchor).isActive = true
        blueView.leadingAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        blueView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 10).isActive = true
        blueView.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        let grayView = UIView()
        grayView.backgroundColor = .gray
        grayView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(grayView)
        grayView.topAnchor.constraint(equalTo: redView.bottomAnchor).isActive = true
        grayView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: -10).isActive = true
        grayView.trailingAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        grayView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        let greenView = UIView()
        greenView.backgroundColor = .green
        greenView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(greenView)
        greenView.topAnchor.constraint(equalTo: grayView.bottomAnchor).isActive = true
        greenView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: -10).isActive = true
        greenView.trailingAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        greenView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        let purpleView = UIView()
        purpleView.backgroundColor = .purple
        purpleView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(purpleView)
        purpleView.topAnchor.constraint(equalTo: blueView.bottomAnchor).isActive = true
        purpleView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        purpleView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 10).isActive = true
        purpleView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        
        // whiteView
        let whiteView = UIView()
        whiteView.backgroundColor = .white

        whiteView.translatesAutoresizingMaskIntoConstraints = false

        purpleView.addSubview(whiteView)
        whiteView.centerYAnchor.constraint(equalTo: purpleView.centerYAnchor).isActive = true
        whiteView.leadingAnchor.constraint(equalTo: purpleView.leadingAnchor, constant: 40).isActive = true
        whiteView.trailingAnchor.constraint(equalTo: purpleView.centerXAnchor, constant: -40).isActive = true
        whiteView.heightAnchor.constraint(equalToConstant: 50).isActive = true
        whiteView.layer.cornerRadius = 10
        
       
        let whiteView1 = UIView()
        whiteView1.backgroundColor = .white

        whiteView1.translatesAutoresizingMaskIntoConstraints = false

        purpleView.addSubview(whiteView1)
        whiteView1.centerYAnchor.constraint(equalTo: purpleView.centerYAnchor).isActive = true
        whiteView1.leadingAnchor.constraint(equalTo: purpleView.centerXAnchor, constant: 40).isActive = true
        whiteView1.trailingAnchor.constraint(equalTo: purpleView.trailingAnchor, constant: -40).isActive = true
        whiteView1.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        whiteView1.layer.cornerRadius = 10
//        let whiteView = UIView()
//        whiteView.backgroundColor = .white
//        whiteView.translatesAutoresizingMaskIntoConstraints = false
//        purpleView.addSubview(whiteView)
//        whiteView.topAnchor.constraint(equalTo: purpleView.topAnchor, constant: 20).isActive = true
//        whiteView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
//        whiteView.trailingAnchor.constraint(equalTo: view.centerXAnchor, constant: -20).isActive = true
//        whiteView.heightAnchor.constraint(equalToConstant: 60).isActive = true
//
//        let white1View = UIView()
//        white1View.backgroundColor = .white
//        white1View.translatesAutoresizingMaskIntoConstraints = false
//        purpleView.addSubview(white1View)
//        white1View.topAnchor.constraint(equalTo: purpleView.topAnchor, constant: 20).isActive = true
//        white1View.leadingAnchor.constraint(equalTo: view.centerXAnchor, constant: 20).isActive = true
//        white1View.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
//        white1View.heightAnchor.constraint(equalToConstant: 60).isActive = true
        
        
        
        let pinkView = UIView()
        pinkView.backgroundColor = .systemPink
        pinkView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(pinkView)
        pinkView.topAnchor.constraint(equalTo: purpleView.bottomAnchor).isActive = true
        pinkView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        pinkView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 10).isActive = true
        pinkView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        let gray1View = UIView()
        gray1View.backgroundColor = .gray
        gray1View.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(gray1View)
        gray1View.topAnchor.constraint(equalTo: pinkView.bottomAnchor).isActive = true
        gray1View.leadingAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        gray1View.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 10).isActive = true
        gray1View.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        
        let purple1View = UIView()
        purple1View.backgroundColor = .yellow
        purple1View.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(purple1View)
        purple1View.topAnchor.constraint(equalTo: pinkView.bottomAnchor).isActive = true
        purple1View.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: -10).isActive = true
        purple1View.trailingAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        purple1View.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

