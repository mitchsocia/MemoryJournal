//
//  DetailViewController.swift
//  MemoryJournal
//
//  Created by Mitchell Socia on 9/10/18.
//  Copyright © 2018 Mitchell Socia. All rights reserved.
//

import UIKit

protocol DetailViewControllerDelegate: class {
    func detailViewController(_ controller: DetailViewController, didFinishEditing item: Memory)
}



class DetailViewController: UIViewController {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var detailLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
   
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
