//
//  ImageService.swift
//  Schedule
//
//  Created by Ben Botvinick on 9/26/18.
//  Copyright © 2018 Ben Botvinick. All rights reserved.
//

import UIKit

struct ImageService {
    static func saveImage(image: UIImage, completion: () -> Void) -> Void {
        guard let data = image.pngData() else { return }
        guard let directory = try? FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false) as NSURL else { return }
        do {
            try data.write(to: directory.appendingPathComponent("schedule.png")!)
            completion()
        } catch {
            print(error.localizedDescription)
            return
        }
    }
    
    static func getSavedImage(named: String) -> UIImage? {
        if let dir = try? FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false) {
            return UIImage(contentsOfFile: URL(fileURLWithPath: dir.absoluteString).appendingPathComponent(named).path)
        }
        return nil
    }
    
}

