//
//  ViewController.swift
//  dddddd
//
//  Created by study on 17/3/30.
//  Copyright © 2017年 study. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate , UITableViewDataSource {

    @IBAction func myClick(_ sender: Any) {
        
        let index1 = IndexPath(row: 2, section: 0);
        let index2 = IndexPath(row: 3, section: 0);
        
        tableView.reloadRows(at: [index1 , index2 ], with: .none)
    }
    
    var tableView:UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView = UITableView(frame: self.view.frame, style: UITableViewStyle.plain)
        
        self.view.insertSubview(tableView, at: 0)
        
        tableView.delegate = self
        tableView.dataSource = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        print("section \(indexPath.section) row=\(indexPath.row)")
       
        if indexPath.row & 1 == 0 {
            return 45
        }else{
            return 100
        }
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let id = "cell"
        var cell = tableView.dequeueReusableCell(withIdentifier: id)
        if cell == nil {
            cell = UITableViewCell(style: .default, reuseIdentifier: id)
        }
        cell?.textLabel?.text = "section \(indexPath.section) row=\(indexPath.row)"
        
        return cell!
    }
    
}

