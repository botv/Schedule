//
//  InitialViewController.swift
//  Schedule
//
//  Created by Ben Botvinick on 9/25/18.
//  Copyright © 2018 Ben Botvinick. All rights reserved.
//

import UIKit

class InitialViewController: UIViewController {
    
    let photoHelper = PhotoHelper()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        photoHelper.completionHandler = { image in
            // insert image into UserDefaults
            self.performSegue(withIdentifier: "toScheduleViewController", sender: self)
        }
        
        self.navigationController?.view.backgroundColor = .white
    }
    
    @IBAction func uploadPhotoButtonPressed(_ sender: Any) {
        photoHelper.presentActionSheet(from: self)
    }
    
}
