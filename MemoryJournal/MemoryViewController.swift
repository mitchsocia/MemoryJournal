//
//  ViewController.swift
//  MemoryJournal
//
//  Created by Mitchell Socia on 9/10/18.
//  Copyright © 2018 Mitchell Socia. All rights reserved.
//

import UIKit

class MemoryJournalViewController: UITableViewController {
    
    var memoryList: [Memory] = []
    
    private func populateMemoryList() {
        let memoryDatabase = MemoryDatabase()
        
        for item in memoryDatabase.memories {
            let newMemory = Memory.init(memoryName: item, memoryDetail: item, memoryDate: item)
            memoryList.append(newMemory) 
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        populateMemoryList()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return memoryList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MemoryJournalItem", for: indexPath)
        
        cell.textLabel?.text = "\(memoryList[indexPath.row].memoryName)"
        return cell
        
    }
//
//    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        tableView.deselectRow(at: indexPath, animated: true)
//        let indexPath = tableView.indexPathForSelectedRow!
//    }
    
//    @IBAction func addItem(_ sender: Any) {
//        let newRowIndex = memoryList.count
//
//        let newItem = MemoryDatabase()
//        newItem.memoryName = "Name"
//        newItem.memoryDetail = "Detail"
//        newItem.memoryDate = "Date"
//        memoryList.append(newItem)
//
//        let indexPath = IndexPath(row: newRowIndex, section: 0)
//        let indexPaths = [indexPath]
//        tableView.insertRows(at: indexPaths, with: .automatic)
//
//    }
}

