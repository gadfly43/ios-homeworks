//
//  InfoViewController.swift
//  Navigation
//


import UIKit

class InfoViewController: UIViewController {
    
    private lazy var buttonAlert: UIButton = {
        let button = UIButton()
        button.setTitle("Show alert", for: .normal)
        button.backgroundColor = .systemBlue
        button.layer.cornerRadius = 5
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(alertClicked), for: .touchUpInside)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigationBar()
        setupView()
    }
    
    private func setupNavigationBar() {
        self.navigationController?.navigationBar.prefersLargeTitles = false
        view.backgroundColor = .white
        title = "Info"
    }
    
    private func setupView() {
        view.addSubview(buttonAlert)
        NSLayoutConstraint.activate([
            buttonAlert.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 50),
            buttonAlert.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -50),
            buttonAlert.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -100),
            buttonAlert.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
    
    @objc func alertClicked() {
        let alert = UIAlertController(title: "Title", message: "Type something...", preferredStyle: .alert)
        let okButton = UIAlertAction(title: "Ok", style: .default, handler: nil)
        let cancelButton = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        alert.addAction(okButton)
        alert.addAction(cancelButton)
        present(alert, animated: true, completion: nil)
        print("Alert work")
    }
}
