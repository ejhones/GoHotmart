//
//  RootNavigationViewController.swift
//  SwiftSideMenu
//
//  Created by Evgeny Nazarov on 29.09.14.
//  Copyright (c) 2014 Evgeny Nazarov. All rights reserved.
//

import UIKit

class ENSideMenuNavigationController: UINavigationController, ENSideMenuProtocol {

    var sideMenu : ENSideMenu?
    var sideMenuAnimationType : ENSideMenuAnimation = .default


    // MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    public init( menuViewController: UIViewController, contentViewController: UIViewController?) {
        super.init(nibName: nil, bundle: nil)

        if (contentViewController != nil) {
            self.viewControllers = [contentViewController!]
        }

        sideMenu = ENSideMenu(sourceView: self.view, menuViewController: menuViewController, menuPosition:.left)
        view.bringSubview(toFront: navigationBar)
    }

    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Navigation
    func setContentViewController(_ contentViewController: UIViewController) {
        self.sideMenu?.toggleMenu()
        switch sideMenuAnimationType {
        case .none:
            self.viewControllers = [contentViewController]
            break
        default:
            contentViewController.navigationItem.hidesBackButton = true
            self.setViewControllers([contentViewController], animated: true)
            break
        }

    }

}
