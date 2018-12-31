//
//  ViewController.swift
//  JitterMe
//
//  Created by Sudhanshu Sudhanshu on 31/12/18.
//  Copyright © 2018 Sudhanshu Sudhanshu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let clickMeButton: ClickMeButton = {
        let button = ClickMeButton(type: .custom)
        button.setTitle("I jitter", for: .normal)
        button.setTitleColor(.black, for: .normal)
        
        button.backgroundColor = .yellow
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupClickMeButton()
    }
    
    fileprivate func setupClickMeButton() {
        view.addSubview(clickMeButton)
        NSLayoutConstraint.activate(
            [clickMeButton.heightAnchor.constraint(equalToConstant: 50),
             clickMeButton.widthAnchor.constraint(equalToConstant: 250),
             clickMeButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
             clickMeButton.centerYAnchor.constraint(equalTo: view.centerYAnchor)]
        )
        clickMeButton.addTarget(self, action: #selector(clickMeAction), for: .touchUpInside)
    }

    @objc
    fileprivate func clickMeAction(_ sender: ClickMeButton) {
        sender.jitter()
    }
}
