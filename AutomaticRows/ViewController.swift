//
//  ViewController.swift
//  AutomaticRows
//
//  Created by Owais Munawar on 2/21/19.
//  Copyright © 2019 Owais Munawar. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let titles = ["Title 1","Title 2","Title 3","Title 4","Title 5","Title 6","Title 7","Title 8","Title 9","Title 10"]
    let details = ["jshg hsdgf jhgsdfhgjg sfsdf sdfsfd sdf",
                   "jshg hsdgf jhgsdfhgjg sfsdf sdfsfd sdf kjs kjs dfjhskf hkjs fsdfs",
                   "jshg hsdgf jhgsdfhgjg sfsdf sdfsfd sdf kjhkjh kjh skjdhf kjhsd kfjh ks fkjshd fkj jk",
                   "jshg hsdgf jhgsdfhgjg sfsdf sdfsfd",
                   "jshg hsdgf jhgsdfhgjg sfsdf sdfsfd sdf sjhdf gshjdfg jhsg dfjh sjhdfg jhsgd fjhg sdjf jhgs jdhfg jhgsdf",
                   "jshg hsdgf jhgsdfhgjg sfsdf",
                   "jshg hsdgf jhgsdfhgjg sfsdf sdfsfd sdf sdf sjhdf kjshd fkj",
                   "jshg hsdgf jhgsdfhgjg sfsdf sdfsfd sdf sjkd shg fjhgs djfhg jshdfg jhsgdf",
                   "jshg hsdgf jhgsdfhgjg sfsdf sdfsfd sdf sdfj jshdf kjhskdfjh ksjdhkjshf k jhs",
                   "jshg hsdgf jhgsdfhgjg sfsdf sdfsfd sdf skjdfh ksjh fkjshfkjhskj kjsd fkjh skfh ksdf khs fkdh skfh kshfd kshdf kh sfkh skfhksdhf ks fsdf sdfsf"]
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView.delegate = self
        tableView.dataSource = self
    }
//UITableView delegate and DataSource methods
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell:Cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! Cell
        
        
        DispatchQueue.main.asyncAfter(deadline: (.now() + 2)) {
            //cell.constraintTitleHeight.constant = 50
            tableView.beginUpdates()
            cell.titleLabel.text = self.titles[indexPath.row]
            cell.descriptionLabel.text = self.details[indexPath.row]
            tableView.endUpdates()
        }
        
        cell.iconImageView.image = nil
        

        return cell
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        cell.layoutIfNeeded()
    }
}

