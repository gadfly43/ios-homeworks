//
//  PhotosViewController.swift
//  Navigation
//


import UIKit

class PhotosViewController: UIViewController {
    
    var selectedCell: PhotosCollectionViewCell?
    var selectedCellImageViewSnapshot: UIView?
        
    private enum Constants {
        static let itemCount: CGFloat = 3
    }
    
    private lazy var layout: UICollectionViewFlowLayout = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.minimumLineSpacing = 8
        layout.minimumInteritemSpacing = 8
        return layout
    }()
    
    private lazy var collectionView: UICollectionView = {
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: self.layout)
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(PhotosCollectionViewCell.self, forCellWithReuseIdentifier: "PhotosCollectionViewCell")
        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "DefaultCollectionCell")
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        return collectionView
    }()
    
    private let tapGestureRecognizer = UITapGestureRecognizer()

    private var collectionDataSource : [CollectionViewModel] = [
        CollectionViewModel(image: "pic1.png"),
        CollectionViewModel(image: "pic2.png"),
        CollectionViewModel(image: "pic3.png"),
        CollectionViewModel(image: "pic4.png"),
        CollectionViewModel(image: "pic5.png"),
        CollectionViewModel(image: "pic6.png"),
        CollectionViewModel(image: "pic7.png"),
        CollectionViewModel(image: "pic8.png"),
        CollectionViewModel(image: "pic9.png"),
        CollectionViewModel(image: "pic10.png"),
        CollectionViewModel(image: "pic11.png"),
        CollectionViewModel(image: "pic12.png"),
        CollectionViewModel(image: "pic13.png"),
        CollectionViewModel(image: "pic14.png"),
        CollectionViewModel(image: "pic15.png"),
        CollectionViewModel(image: "pic16.png"),
        CollectionViewModel(image: "pic17.png"),
        CollectionViewModel(image: "pic18.png"),
        CollectionViewModel(image: "pic19.png"),
        CollectionViewModel(image: "pic20.png"),
        CollectionViewModel(image: "pic21.png")
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupView()
        self.title = "Photos"
        navigationItem.backButtonTitle = ""
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }
    
    private func setupView() {
        view.addSubview(collectionView)
        
        NSLayoutConstraint.activate([
            collectionView.topAnchor.constraint(equalTo: view.topAnchor),
            collectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
        ])
    }
    
    private func itemSize(for width: CGFloat, with spacing: CGFloat) -> CGSize {
        let neededWidth = width - 4 * spacing
        let itemWidth = floor(neededWidth / Constants.itemCount)
        return CGSize(width: itemWidth, height: itemWidth)
    }
}

extension PhotosViewController: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.collectionDataSource.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PhotosCollectionViewCell", for: indexPath) as? PhotosCollectionViewCell else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "DefaultCollectionCell", for: indexPath)
            cell.backgroundColor = .black
            return cell
        }
        cell.backgroundColor = .systemGray6
        let photos = collectionDataSource[indexPath.row]
        cell.photoGalleryImages.image = UIImage(named: photos.image)
        cell.photoGalleryImages.contentMode = .scaleAspectFill
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 8, left: 8, bottom: 8, right: 8)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt: IndexPath) -> CGSize {
        let spacing = ( collectionView.collectionViewLayout as? UICollectionViewFlowLayout)?.minimumInteritemSpacing
        return self.itemSize(for: collectionView.frame.width, with: spacing ?? 0)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let viewController = DetailedPhotoViewController()        
        viewController.selectedImage = collectionDataSource[indexPath.row].image
        navigationController?.pushViewController(viewController, animated: true)    }
}
