//
//  PostViewController.swift
//  Navigation
//


import UIKit

class PostViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigationBar()
        setupView()
    }
    
    private func setupNavigationBar() {
        self.navigationController?.navigationBar.prefersLargeTitles = false
        view.backgroundColor = .systemGray3
        navigationItem.backButtonTitle = ""
    }
    
    private func setupView() {
        let myPost = Post()
        let titleLabel = UILabel()
        titleLabel.text = myPost.title
        title = titleLabel.text
        let infoImage = UIImage(named: "info")
        let infoButton = UIBarButtonItem(image: infoImage, style: .plain, target: self, action: #selector(buttonInfoClicked))
        navigationItem.rightBarButtonItem = infoButton
    }
        
    @objc func buttonInfoClicked() {
        let infoViewController = InfoViewController()
        navigationController?.pushViewController(infoViewController, animated: true)
    }
}
