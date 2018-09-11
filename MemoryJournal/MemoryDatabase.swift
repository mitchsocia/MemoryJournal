//
//  MemoryDatabase.swift
//  MemoryJournal
//
//  Created by Mitchell Socia on 9/10/18.
//  Copyright © 2018 Mitchell Socia. All rights reserved.
//

import Foundation

class MemoryDatabase {
    
//    let memories = ["Dancing", "That One Guy", "When Matt Fell Down", "Forgot To Brush My Teeth", "Saw That Band"]

    func populateMemories() -> [Memory] {
        var tempMem: [Memory] = []
    
        let memory1 = Memory(memoryName: "Dancing!", memoryDetail: "Remember that time we went dancing? Now that was fun.", memoryDate: "2018")
        let memory2 = Memory(memoryName: "When Matt Fell Down", memoryDetail: "He tripped over that couch in front of everyone. Good thing we got it on video!", memoryDate: "2015")
        let memory3 = Memory(memoryName: "Saw That Band", memoryDetail: "Really wish I could remember what they were called...", memoryDate: "2003")
    
        tempMem = [memory1, memory2, memory3]
        return tempMem
    
    }
    
    
}

