//
//  ViewController.swift
//  MemoryJournal
//
//  Created by Mitchell Socia on 9/10/18.
//  Copyright © 2018 Mitchell Socia. All rights reserved.
//

import UIKit

class MemoryJournalViewController: UITableViewController, DetailViewControllerDelegate {
    
    var memoryList: [Memory] = []
    var memoryDatabase = MemoryDatabase()
    var selectedMemoryIndex = 0
    
//    private func populateMemoryList() {
//        let memoryDatabase = MemoryDatabase()
//
//        for item in memoryDatabase.memories {
//            let newMemory = Memory.init(memoryName: item, memoryDetail: item, memoryDate: item)
//            memoryList.append(newMemory)
//        }
//    }
    
    func detailViewController(_ _controller: DetailViewController, didFinishEditing item: Memory) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        memoryList = memoryDatabase.populateMemories()
        
        
        //        populateMemoryList()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return memoryList.count
    }
    
    override func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath? {
        selectedMemoryIndex = indexPath.row
        return indexPath
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if (editingStyle == UITableViewCellEditingStyle.delete) {
            memoryList.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .top)
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MemoryJournalItem", for: indexPath)
        
        cell.textLabel?.text = "\(memoryList[indexPath.row].memoryName)"
        return cell
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "SeeDetailStoryboardSegue" {
            guard let detailViewController = segue.destination as? DetailViewController else { return }
           detailViewController.memoryData = memoryList[selectedMemoryIndex]
            
            detailViewController.delegate = self
        }
}

    private func useLargeTitles() {
        navigationController?.navigationBar.prefersLargeTitles = true
    }

    
    
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

