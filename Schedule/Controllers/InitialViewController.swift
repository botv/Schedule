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
        
        if UserDefaults.standard.bool(forKey: "picChosen") {
            self.performSegue(withIdentifier: "toScheduleViewControllerNotAnimated", sender: self)
        }
        
        photoHelper.completionHandler = { image in
            ImageService.saveImage(image: image) {
                UserDefaults.standard.set(true, forKey: "picChosen")
                self.performSegue(withIdentifier: "toScheduleViewController", sender: self)
            }
        }
        
        self.navigationController?.view.backgroundColor = .white
    }
    @IBAction func uploadButtonPressed(_ sender: Any) {
        photoHelper.presentActionSheet(from: self)
    }
    
}
