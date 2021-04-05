//
//  ___FILEHEADER___
//

import UIKit

class ___FILEBASENAMEASIDENTIFIER___: UIViewController {
    // MARK: - Section
    private enum Section: Int, CaseIterable {
        case normal
        
        var reuseIdentifier: String {
            switch self {
            case .normal:
                return "normalCellIdentifier"
            }
        }
        var title: String {
            switch self {
            case .normal:
                return "Title"
            }
        }
        var headerHeight: CGFloat {
            switch self {
            case .normal:
                return 60
            }
        }
    }
    
    // MARK: - Properties
    var viewModel: ___VARIABLE_productName___CollectionViewModel?
    private let collectionView: UICollectionView = {
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.scrollDirection = .horizontal
        
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: flowLayout)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        return collectionView
    }()
    
    // MARK: - Constructors
    // Add here a custom constructor
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
        setupBinding()
    }
}

// MARK: - UI
extension ___FILEBASENAMEASIDENTIFIER___ {
    private func setupUI() {
        // Add here the setup for the UI
        
        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: Section.normal.reuseIdentifier)
        collectionView.delegate = self
        collectionView.dataSource = self
        view.addSubview(collectionView)
        
        NSLayoutConstraint.activate(NSLayoutConstraint.constraints(withVisualFormat: "H:|[collection]|", options: [], metrics: nil, views: ["collection": collectionView]))
        NSLayoutConstraint.activate(NSLayoutConstraint.constraints(withVisualFormat: "V:|[collection]|", options: [], metrics: nil, views: ["collection": collectionView]))
    }
}

// MARK: - Data Binding
extension ___FILEBASENAMEASIDENTIFIER___ {
    private func setupBinding() {
        viewModel?.dataDidChangedClosure = { _ in
            // Do something to update view
        }
    }
}

// MARK: - Actions
extension ___FILEBASENAMEASIDENTIFIER___ {
}

// MARK: - UICollectionViewDelegate and UICollectionViewDataSource
extension ___FILEBASENAMEASIDENTIFIER___: UICollectionViewDelegate, UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        Section.allCases.count
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch Section(rawValue: section) {
        case .normal:
            return 1
        default:
            return 0
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        switch Section(rawValue: indexPath.section) {
        case .normal:
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Section.normal.reuseIdentifier, for: indexPath) as? UICollectionViewCell else {
                return UICollectionViewCell()
            }
            // Update cell
            return cell
        default:
            return UICollectionViewCell()
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    }
}

// MARK: - UICollectionViewDelegateFlowLayout
extension ___FILEBASENAMEASIDENTIFIER___: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize(width: 100, height: 100)
    }
}
