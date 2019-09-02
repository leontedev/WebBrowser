//
//  LinksListViewController.swift
//  WebBrowser
//
//  Created by Mihai Leonte on 9/2/19.
//  Copyright © 2019 Mihai Leonte. All rights reserved.
//

import UIKit

var websites = ["github.com", "hackingwithswift.com", "google.com", "worldpay.com"]

class LinksListViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Select website"

    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return websites.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "linkCell", for: indexPath)
        cell.textLabel?.text = websites[indexPath.row]
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let webviewVC = storyboard?.instantiateViewController(withIdentifier: "webview") as? ViewController else { return }
        webviewVC.website = websites[indexPath.row]
        navigationController?.pushViewController(webviewVC, animated: true)
        
    }
    

}
