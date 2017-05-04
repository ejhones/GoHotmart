//
//  GHTabBarController.swift
//  GoHotmart
//
//  Created by Edilson Jhones on 28/04/17.
//  Copyright © 2017 Edilson Jhones. All rights reserved.
//

import UIKit

class GHTabBarController: UITabBarController {
    
    var mensagemVC: GHMensagemVC!
    var minhasVendasVC: GHMinhasVendasTC!
    var notificacoesVC: GHNotificacoesVC!
    var menuTC: GHMenuTC!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.defineStoryboards()
        self.definePropertyTabIcon()
        self.viewControllers = [mensagemVC as UIViewController, minhasVendasVC as UIViewController, notificacoesVC as UIViewController]
        self.selectedIndex = INDEX_BAR_SELECTED
        self.menuTC = UIStoryboard(name: "GHMenu", bundle: nil).instantiateViewController(withIdentifier: "GHMenu") as! GHMenuTC
        
        let didSelected = Notification.Name("didSelected")
        let showMenu = Notification.Name("showMenu")
        NotificationCenter.default.addObserver(self, selector: #selector(self.didSelected), name: didSelected, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(self.showMenu(_:)), name: showMenu, object: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    override func viewDidAppear(_ animated: Bool) {
        for item in self.tabBar.items! {
            let unselectedItem = [NSForegroundColorAttributeName: UIColor.black]
            let selectedItem = [NSForegroundColorAttributeName: UIColor.blue]
            item.setTitleTextAttributes(unselectedItem, for: UIControlState())
            item.setTitleTextAttributes(selectedItem, for: .selected)
        }
    }
    
    func defineStoryboards() {
        self.mensagemVC = UIStoryboard(name: "GHMenu", bundle: nil).instantiateViewController(withIdentifier: "GHMensagemVC") as! GHMensagemVC
        self.minhasVendasVC = UIStoryboard(name: "GHMenu", bundle: nil).instantiateViewController(withIdentifier: "GHMinhasVendasTC") as! GHMinhasVendasTC
        self.notificacoesVC = UIStoryboard(name: "GHMenu", bundle: nil).instantiateViewController(withIdentifier: "GHNotificacoesVC") as! GHNotificacoesVC
    }

    func definePropertyTabIcon() {
        self.mensagemVC.tabBarItem.image = UIImage(named: "ico_mensagem")
        self.mensagemVC.tabBarItem.imageInsets = UIEdgeInsetsMake(6, 0, -6, 0)
        
        self.minhasVendasVC.tabBarItem.image = UIImage(named: "ico_minhas_vendas")
        self.minhasVendasVC.tabBarItem.imageInsets = UIEdgeInsetsMake(6, 0, -6, 0)
        
        self.notificacoesVC.tabBarItem.image = UIImage(named: "ico_notificacoes")
        self.notificacoesVC.tabBarItem.imageInsets = UIEdgeInsetsMake(6, 0, -6, 0)
    }
    
    @IBAction func showMenu(_ sender: Any) {
        addChildViewController(menuTC)
        menuTC.view.frame = CGRect(x: 0, y: 0, width: self.view.frame.width - 40, height: self.view.frame.height)
        self.navigationController?.view.addSubview(menuTC.view)
        menuTC.didMove(toParentViewController: self)
    }
    
    func didSelected() {
        menuTC.willMove(toParentViewController: nil)
        menuTC.view.removeFromSuperview()
        menuTC.removeFromParentViewController()
    }
    
}


