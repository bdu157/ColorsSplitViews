//
//  ColorDetailViewController.swift
//  ColorsSplitViews
//
//  Created by Dongwoo Pae on 12/6/19.
//  Copyright © 2019 Dongwoo Pae. All rights reserved.
//

import UIKit

class ColorDetailViewController: UIViewController {

    var color: Color? {
        didSet {
            updateViews()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.leftBarButtonItem = splitViewController?.displayModeButtonItem
        navigationItem.leftItemsSupplementBackButton = true
        
        updateViews()
    }


    func updateViews() {
        guard let color = color, isViewLoaded else {return}
        title = color.name
        view.backgroundColor = color.color
    }
}
