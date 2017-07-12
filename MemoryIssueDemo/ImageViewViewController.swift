//
//  ImageViewViewController.swift
//  MemoryIssueDemo
//
//  Created by Benjamin Encz on 7/6/15.
//  Copyright (c) 2015 Benjamin Encz. All rights reserved.
//

import UIKit

class ImageViewViewController: UIViewController {

    @IBOutlet weak var leakyImageView: LeakyImageView!
    var data: Data?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        leakyImageView.delegate = self
        
        let filePath = Bundle.main.path(forResource: "Test", ofType: "txt")
        data = try? Data(contentsOf: URL(fileURLWithPath: filePath!))
    }
    
}
