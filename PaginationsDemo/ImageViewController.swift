//
//  ImageViewController.swift
//  PaginationsDemo
//
//  Created by Alvin butani on 8/12/18.
//  Copyright © 2018 Alvin butani. All rights reserved.
//

import UIKit

class ImageViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    var image: UIImage? {
        didSet {
            self.imageView?.image = image
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.imageView.image = image
    }


}
