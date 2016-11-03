//
//  ViewController.swift
//  TimesTable
//
//  Created by James Leach on 11/2/16.
//  Copyright © 2016 Dadio. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {


    @IBOutlet weak var table: UITableView!
    @IBOutlet weak var sli: UISlider!

    @IBAction func slider(_ sender: AnyObject) {

        table.reloadData()
    }


    internal func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{

        return 50

    }




    internal func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{

        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "Cell")

        cell.textLabel?.text = String((Int(sli.value * 20)) * (indexPath.row + 1))

        return cell


    }






    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

