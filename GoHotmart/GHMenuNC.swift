//
//  GHMenuNC.swift
//  GoHotmart
//
//  Created by Edilson Jhones on 28/04/17.
//  Copyright © 2017 Edilson Jhones. All rights reserved.
//

import UIKit

class GHMenuNC: ENSideMenuNavigationController, ENSideMenuDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        let menu = UIStoryboard(name: "GHMenu", bundle: nil).instantiateViewController(withIdentifier: "GHMenu") as! GHMenuTC
        sideMenu = ENSideMenu(sourceView: self.view, menuViewController: menu, menuPosition: .left, blurStyle: .dark)
        sideMenu?.menuWidth = self.view.frame.size.width - 40
        // optional, default is 160
        //sideMenu?.bouncingEnabled = false
        //sideMenu?.allowPanGesture = false
        // make navigation bar showing over side menu
        view.bringSubview(toFront: navigationBar)
    }

}
