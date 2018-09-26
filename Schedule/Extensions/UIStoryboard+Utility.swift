//
//  UIStoryboard+Utility.swift
//  Schedule
//
//  Created by Ben Botvinick on 9/24/18.
//  Copyright © 2018 Ben Botvinick. All rights reserved.
//

import UIKit

extension UIStoryboard {
    enum MGType: String {
        case initial
        case schedule
        
        var filename: String {
            return rawValue.capitalized
        }
    }
    
    convenience init(type: MGType, bundle: Bundle? = nil) {
        self.init(name: type.filename, bundle: bundle)
    }
    
    static func initialViewController(for type: MGType) -> UIViewController {
        let storyboard = UIStoryboard(type: type)
        guard let initialViewController = storyboard.instantiateInitialViewController() else {
            fatalError("Couldn't instantiate initial view controller for \(type.filename) storyboard.")
        }
        
        return initialViewController
    }
}
