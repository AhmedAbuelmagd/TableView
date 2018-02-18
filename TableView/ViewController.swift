//
//  ViewController.swift
//  TableView
//
//  Created by Ahmed Abuelmagd on 2/18/18.
//  Copyright © 2018 Ahmed Abuelmagd. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    //Connections
    @IBOutlet weak var companyTableView: UITableView!
    //Variables & Constants
    let companyName = ["FaceBook","Google","Apple","Microsoft"]
    let share = [34,24,66,13]
    override func viewDidLoad() {
        super.viewDidLoad()
        companyTableView.dataSource = self
        companyTableView.delegate = self
    }
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return companyName.count
    }

    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        cell?.textLabel?.text = companyName[indexPath.row]
        cell?.detailTextLabel?.text = "\(share[indexPath.row])"
        return cell!
    }
   

}

