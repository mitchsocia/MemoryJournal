//
//  Memory.swift
//  MemoryJournal
//
//  Created by Mitchell Socia on 9/10/18.
//  Copyright © 2018 Mitchell Socia. All rights reserved.
//

import Foundation
import UIKit

class Memory: NSObject {
    
    var memoryName: String
    var memoryDetail: String
    var memoryDate: String
    
    init(memoryName: String, memoryDetail: String, memoryDate: String) {
        self.memoryName = memoryName
        self.memoryDetail = memoryDetail
        self.memoryDate = memoryDate
    }
    
//    var nameAndNumber: String {
//        return "\(memoryName) \(memoryDetail) \(memoryDate)"
//    }
}
