//
//  ViewController.swift
//  TableCustomCell
//
//  Created by Shemona on 8/23/16.
//  Copyright © 2016 test. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tblView: UITableView!
    var collections:NSArray = []
    var descriptions:NSArray = []
    
    override func viewDidLoad() {
         collections = ["Collection 1", "Collection 2", "Collection 3", "Collection 4", "Collection 5", "Collection 6"]
         descriptions = ["Collection description 1", "Collection description 2", "Collection description 3", "Collection description 4", "Collection description 5", "Collection description 6"]
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    func numberOfSectionsInTableView(tableView: UITableView) -> Int
    {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return collections.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath:indexPath) as! TableViewCell
        cell.lbl_Name.text = collections.objectAtIndex(indexPath.row) as? String
        cell.lbl_Desc.text = descriptions.objectAtIndex(indexPath.row) as? String
        return cell
    }
    
   

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

