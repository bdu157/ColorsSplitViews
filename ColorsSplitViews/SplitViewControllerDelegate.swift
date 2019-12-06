//
//  SplitViewControllerDelegate.swift
//  ColorsSplitViews
//
//  Created by Dongwoo Pae on 12/6/19.
//  Copyright © 2019 Dongwoo Pae. All rights reserved.
//

import Foundation
import UIKit

class SplitViewControllerDelegate: NSObject, UISplitViewControllerDelegate {
    func splitViewController(_ splitViewController: UISplitViewController, collapseSecondary secondaryViewController: UIViewController, onto primaryViewController: UIViewController) -> Bool {
        return true
    }
}
