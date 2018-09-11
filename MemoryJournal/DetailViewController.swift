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
    
    var memoryData: Memory?
    weak var delegate: DetailViewControllerDelegate?
   
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Current Memory"
        nameTextField.isHidden = true
        detailsTextField.isHidden = true
        dateTextField.isHidden = true
            guard let memoryData = memoryData else { return }

            populateData(data: memoryData)

        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    private func populateData(data: Memory) {
        nameLabel.text = data.memoryName
        detailLabel.text = data.memoryDetail
        dateLabel.text = data.memoryDate
    
    }
    
    
    @IBAction func editMemory(_ sender: Any) {
        self.navigationItem.title = "Edit Memory"
        self.view.backgroundColor = UIColor.cyan
        nameLabel.isHidden = true
        detailLabel.isHidden = true
        dateLabel.isHidden = true
        nameTextField.isHidden = false
        detailsTextField.isHidden = false
        dateTextField.isHidden = false
    }
    
    
    @IBAction func saveButton(_ sender: UIButton) {
    }
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var detailsTextField: UITextField!
    @IBOutlet weak var dateTextField: UITextField!
}




