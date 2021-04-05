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
    let viewModel = ___VARIABLE_productName___TableViewModel()
    private let tableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
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
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: Section.normal.reuseIdentifier)
        tableView.delegate = self
        tableView.dataSource = self
        view.addSubview(tableView)
        
        NSLayoutConstraint.activate(NSLayoutConstraint.constraints(withVisualFormat: "H:|[table]|", options: [], metrics: nil, views: ["table": tableView]))
        NSLayoutConstraint.activate(NSLayoutConstraint.constraints(withVisualFormat: "V:|[table]|", options: [], metrics: nil, views: ["table": tableView]))
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

// MARK: - Actions
extension ___FILEBASENAMEASIDENTIFIER___ {
}

// MARK: - UITableViewDelegate and UITableViewDataSource
extension ___FILEBASENAMEASIDENTIFIER___: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        Section.allCases.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch Section(rawValue: section) {
        case .normal:
            return 1
        default:
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch Section(rawValue: indexPath.section) {
        case .normal:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: Section.normal.reuseIdentifier, for: indexPath) as? UITableViewCell else {
                return UITableViewCell()
            }
            // Update cell
            return cell
        default:
            return UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    }
}
