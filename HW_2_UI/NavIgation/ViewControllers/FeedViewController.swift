//
//  FeedViewController.swift
//  NavIgation
//
//  Created by Anna Ovodova on 28.03.2022.
//

import UIKit

class FeedViewController: UIViewController {

    var postButton: UIButton!

        var post = Post()

        override func loadView() {
            view = UIView()

            postButton = UIButton()
            //postButton.translatesAutoresizingMaskIntoConstraints = false
            postButton.backgroundColor = .systemCyan
            postButton.layer.borderWidth = 1
            postButton.layer.cornerRadius = 5
            postButton.frame = CGRect(x: 20, y: 200, width: 100, height: 20)
            postButton.setTitle("Post", for: .normal)
            postButton.addTarget(self, action: #selector(showPost), for: .touchUpInside)
            view.addSubview(postButton)

    //        NSLayoutConstraint.activate([
    //            postButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
    //            postButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
    //
    //        ])
        }

        override func viewDidLoad() {
            super.viewDidLoad()

            // Do any additional setup after loading the view.
        }

        @objc func showPost() {
            let postVC = PostViewController()
            postVC.post = post
            self.navigationController?.pushViewController(postVC, animated: true)
        }

}
