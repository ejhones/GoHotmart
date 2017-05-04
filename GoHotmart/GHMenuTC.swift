//
//  GHMenuTC.swift
//  GoHotmart
//
//  Created by Edilson Jhones on 28/04/17.
//  Copyright © 2017 Edilson Jhones. All rights reserved.
//

import UIKit

class GHMenuTC: UITableViewController {
        
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.separatorStyle = .none
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 8
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let notificationName = Notification.Name("didSelected")
        NotificationCenter.default.post(name: notificationName, object: nil)
    }
    
}
