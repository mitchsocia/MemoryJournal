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
        self.view.backgroundColor = UIColor(red:0.59, green:0.83, blue:0.90, alpha:1.0)
        nameLabel.isHidden = true
        detailLabel.isHidden = true
        dateLabel.isHidden = true
        nameTextField.isHidden = false
        detailsTextField.isHidden = false
        dateTextField.isHidden = false
        nameTextField.becomeFirstResponder()
        nameTextField.text = memoryData?.memoryName
        detailsTextField.text = memoryData?.memoryDetail
        dateTextField.text = memoryData?.memoryDate
    }
    
    
    @IBAction func saveButton(_ sender: UIButton) {
        guard let memory = memoryData else { return }
        
        guard let updatedName = nameTextField.text else { return }
        memory.memoryName = updatedName
        
        guard let updatedDetail = detailsTextField.text else { return }
        memory.memoryDetail = updatedDetail
        
        guard let updatedDate = dateTextField.text else { return }
        memory.memoryDate = updatedDate
        
        delegate?.detailViewController(self, didFinishEditing: memory)
        
    }
    
    
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var detailsTextField: UITextField!
    @IBOutlet weak var dateTextField: UITextField!
}




