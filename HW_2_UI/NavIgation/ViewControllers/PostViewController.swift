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
            view.backgroundColor = .systemGray

        }

        override func viewDidLoad() {
            super.viewDidLoad()

            self.title = post.title

            navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Info", style: .done, target: self, action: #selector(showInfo))
        }

        @objc private func showInfo() {
            let infoVC = InfoViewController()
            self.present(infoVC, animated: true)
        }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
