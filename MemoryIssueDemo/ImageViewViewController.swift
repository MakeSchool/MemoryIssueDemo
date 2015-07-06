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
    var data: NSData?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        leakyImageView.delegate = self;
        
        let filePath = NSBundle.mainBundle().pathForResource("Test", ofType: "txt");
        data = NSData(contentsOfFile: filePath!);
    }
    
}