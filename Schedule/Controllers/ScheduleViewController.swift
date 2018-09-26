//
//  ScheduleViewController.swift
//  Schedule
//
//  Created by Ben Botvinick on 9/23/18.
//  Copyright © 2018 Ben Botvinick. All rights reserved.
//

import UIKit

class ScheduleViewController: UIViewController {
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.minimumZoomScale = 1.0
        scrollView.maximumZoomScale = 5.0
        
        imageView.image = ImageService.getSavedImage(named: "schedule.png")
    }

}

extension ScheduleViewController: UIScrollViewDelegate {
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return imageView
    }
}
