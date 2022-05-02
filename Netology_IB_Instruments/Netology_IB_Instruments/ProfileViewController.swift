//
//  ProfileViewController.swift
//  Netology_IB_Instruments
//
//  Created by Anna Ovodova on 23.03.2022.
//

import UIKit
class ProfileViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        let screenSize = UIScreen.main.bounds.width
        if let profileView = Bundle.main.loadNibNamed("ProfileView", owner: nil, options: nil)?.first as? ProfileView {
            profileView.frame = CGRect(x: 16, y: 16, width: screenSize, height: 400)
            view.addSubview(profileView)
    }
}
}
