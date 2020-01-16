//
//  TaskStore.PrioritizedTasks.swift
//  TaskList
//
//  Created by Brian Diesel on 1/16/20.
//  Copyright © 2020 DesignCondition. All rights reserved.
//

extension TaskStore {
  struct PrioritizedTasks {
    let priority: Task.Priority
    var tasks: [Task]
  }
}

extension TaskStore.PrioritizedTasks: Identifiable {
  var id: Task.Priority { priority }
}
