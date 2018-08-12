//
//  ViewController.swift
//  PaginationsDemo
//
//  Created by Alvin butani on 8/12/18.
//  Copyright © 2018 Alvin butani. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var pageVIew: UIPageControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "PageViewController" {
            if let imagesPageVC = segue.destination as? PageViewController {
                imagesPageVC.pageViewControllerDelegate = self
            }
        }
    }
}

extension ViewController:ImagesPageViewControllerDelegate{
    func setupPageController(numberOfPages: Int) {
        pageVIew.numberOfPages = numberOfPages
    }
    
    func turnPageController(to index: Int) {
        pageVIew.currentPage = index
    }
    
    
}

