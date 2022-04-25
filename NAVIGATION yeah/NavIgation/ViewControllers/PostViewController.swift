//
//  PostViewController.swift
//  NavIgation
//
//  Created by Anna Ovodova on 28.03.2022.
//

import UIKit

class PostViewController: UIViewController {

    var post: Post!

        override func loadView() {
            view = UIView()
            view.backgroundColor = .lightGray

        }

        override func viewDidLoad() {
            super.viewDidLoad()

            navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Info", style: .done, target: self, action: #selector(showInfo))
        }

        @objc private func showInfo() {
            let infoVC = InfoViewController()
            self.present(infoVC, animated: true)
        }

}
