//
//  ___FILEHEADER___
//

import UIKit

class ___FILEBASENAMEASIDENTIFIER___: UIViewController {
    // MARK: - Properties
    var viewModel: ___VARIABLE_productName___ViewModel?
    
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
        view.backgroundColor = .white
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
