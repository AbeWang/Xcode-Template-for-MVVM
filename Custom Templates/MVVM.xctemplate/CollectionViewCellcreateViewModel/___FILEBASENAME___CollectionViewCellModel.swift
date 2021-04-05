//
//  ___FILEHEADER___
//

import Foundation

class ___FILEBASENAMEASIDENTIFIER___ {
    // MARK: - Properties
    // Add here a property containing info and set a property observe
    var data: Any? {
        didSet {
            dataDidChangedClosure?(data)
        }
    }
    
    // MARK: - Closures
    // Through these closures, our view model will execute code while some events will occur
    // They will be set up by the view controller
    var dataDidChangedClosure: ((Any?) -> Void)?
    
    // MARK: - Constructors
    // Add here a custom constructor
    
}
