//
//  GHMinhasVendasTC.swift
//  GoHotmart
//
//  Created by Edilson Jhones on 03/05/17.
//  Copyright © 2017 Edilson Jhones. All rights reserved.
//

import UIKit

class GHMinhasVendasTC: UITableViewController {
        
    override func viewDidLoad() {
        super.viewDidLoad()
        let menu = UIBarButtonItem(image: #imageLiteral(resourceName: "hamburger"), style: .done, target: self, action: #selector(showMenu))
        self.navigationItem.leftBarButtonItem = menu
    }

    override func viewDidAppear(_ animated: Bool) {
        self.navigationController?.navigationBar.topItem?.title = "Minhas Vendas"
//        navigationController?.navigationBar.barTintColor = UIColor(red: 29/255, green: 51/255, blue: 77/255, alpha: 1.0)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }

    func showMenu() {
        let notificationName = Notification.Name("showMenu")
        NotificationCenter.default.post(name: notificationName, object: nil)
    }
    
}
