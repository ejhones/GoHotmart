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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
