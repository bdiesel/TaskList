//
//  Task.swift
//  TaskList
//
//  Created by Brian Diesel on 12/15/19.
//  Copyright © 2019 DesignCondition. All rights reserved.
//

import Foundation

struct Task: Identifiable{
    let id = UUID()

    var name: String
    var completed = false
}
