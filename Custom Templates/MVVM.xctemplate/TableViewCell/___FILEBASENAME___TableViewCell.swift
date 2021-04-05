//
//  ___FILEHEADER___
//

import UIKit

class ___FILEBASENAMEASIDENTIFIER___: UITableViewCell {
    // MARK: - Properties
    var viewModel: ___VARIABLE_productName___TableViewCellModel?
    
    // MARK: - Constructors
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
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
        viewModel?.dataDidChangedClosure = { _ in
            // Do something to update view
        }
    }
}
