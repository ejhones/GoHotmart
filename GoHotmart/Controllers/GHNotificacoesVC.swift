//
//  GHNotificacoesVC.swift
//  GoHotmart
//
//  Created by Edilson Jhones on 28/04/17.
//  Copyright © 2017 Edilson Jhones. All rights reserved.
//

import UIKit

class GHNotificacoesVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.navigationBar.topItem?.title = "Notificações"
    }

}
