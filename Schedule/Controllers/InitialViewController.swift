//
//  InitialViewController.swift
//  Schedule
//
//  Created by Ben Botvinick on 9/25/18.
//  Copyright © 2018 Ben Botvinick. All rights reserved.
//

import UIKit

class InitialViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func cameraBarButtonItemPressed(_ sender: Any) {
        print("camera")
        self.performSegue(withIdentifier: "toScheduleViewController", sender: self)
    }
    
    @IBAction func libraryBarButtonItemPressed(_ sender: Any) {
        print("library")
    }
    
}
