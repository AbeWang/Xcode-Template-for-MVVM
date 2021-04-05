//
//  ___FILEHEADER___
//

import UIKit

class ___FILEBASENAMEASIDENTIFIER___: UICollectionViewCell {
    // MARK: - Properties
    let viewModel = ___VARIABLE_productName___CollectionViewCellModel()
    
    // MARK: - Constructors
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupUI()
        setupBinding()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

// MARK: - UI
extension ___FILEBASENAMEASIDENTIFIER___ {
    private func setupUI() {
        // Add here the setup for the UI
    }
}

// MARK: - Data Binding
extension ___FILEBASENAMEASIDENTIFIER___ {
    private func setupBinding() {
        viewModel.dataDidChangedClosure = { _ in
            // Do something to update view
        }
    }
}
