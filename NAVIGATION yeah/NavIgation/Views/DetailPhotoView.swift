//
//  DetailPhotoView.swift
//  NavIgation
//
//  Created by Anna Ovodova on 27.04.2022.
//

import UIKit
class DetailPhotoView: UIView {
    
    lazy var photoView: UIImageView = {
        let imageView = UIImageView()
        imageView.toAutoLayout()
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    private lazy var exitButton: UIButton = {
        let button = UIButton()
        button.toAutoLayout()
        button.setTitle("X", for: .normal)
        button.addTarget(self, action: #selector(exitPressed), for: .touchUpInside)
        button.backgroundColor = .gray
        button.layer.cornerRadius = 10
        return button
    }()
    
    func set(image: String) {
        photoView.image = UIImage(named: image)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setupView()
        self.backgroundColor = .white
        self.alpha = 0
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    private func setupView() {
        self.addSubviews(exitButton, photoView)
        
        NSLayoutConstraint.activate([
            self.exitButton.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 10),
            self.exitButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -30),
            self.exitButton.heightAnchor.constraint(equalToConstant: 40),
            self.exitButton.widthAnchor.constraint(equalToConstant: 40),
            
            self.photoView.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            self.photoView.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            self.photoView.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -20)
        ])
    }
    
    @objc private func exitPressed() {
        UIView.animate(withDuration: 0.5) {
            self.alpha = 0
        }
    }
}

