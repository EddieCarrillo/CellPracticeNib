//
//  ViewController.swift
//  CellPracticeNib
//
//  Created by Eduardo Carrillo on 2/8/18.
//  Copyright © 2018 Eduardo Carrillo. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    
    let cellReuseId = "com.ecarrillo.tableviewcell"
    
    
    var classes = ["CSE_105: Theory of Computation", "Math 184 Combinatorics", "Math 180A Probability"]

    @IBOutlet weak var tableview: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableview.dataSource = self
        //Load the nib
        let cellNib = UINib(nibName: "TableViewCell", bundle: Bundle.main)
        //Register the cell for use in the 
        tableview.register(cellNib, forCellReuseIdentifier: cellReuseId)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return classes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellReuseId, for: indexPath) as! TableViewCell
        
        
        let index = indexPath.row
        
        let currentClass = classes[index]
        
        cell.classText.text = currentClass
        
        
        
        return cell
    }


}

