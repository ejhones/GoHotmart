//
//  GHDashboardTC.swift
//  GoHotmart
//
//  Created by Edilson Jhones on 04/05/17.
//  Copyright © 2017 Edilson Jhones. All rights reserved.
//

import UIKit

class GHDashboardTC: UITableViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet weak var collection: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()

        let menu = UIBarButtonItem(image: #imageLiteral(resourceName: "hamburger"), style: .done, target: self, action: #selector(showMenu))
        self.navigationItem.leftBarButtonItem = menu
    }
    
    override func viewDidAppear(_ animated: Bool) {
        self.navigationController?.navigationBar.topItem?.title = "Dashboard"
//        navigationController?.navigationBar.barTintColor = UIColor(red: 208/255, green: 79/255, blue: 42/255, alpha: 1.0)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    // MARK: - Table view data source

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
    
    // MARK: - Collection view data source

    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 30
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "GHMensagemCell", for: indexPath) as! GHMensagemCell
        cell.backgroundCenterView.makeCircular()
        return cell
    }
}
