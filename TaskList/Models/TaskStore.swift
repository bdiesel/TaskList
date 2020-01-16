//
//  TaskStore.swift
//  TaskList
//
//  Created by Brian Diesel on 12/15/19.
//  Copyright © 2019 DesignCondition. All rights reserved.
//
import Combine

class TaskStore: ObservableObject{
    @Published var tasks = [
        "Code a swiftui app",
        "Walk the dog",
        "Watch the Bills",
        "Pick up Frank"
    ].map { Task(name: $0) }

    @Published var prioritizedTasks = [
        PrioritizedTasks(
            priority: .high,
            tasks: [Task(name: "Code a swiftui app")]
        ),
        PrioritizedTasks(
            priority: .medium,
            tasks: [Task(name: "Walk the dog")]
        ),
        PrioritizedTasks(
            priority: .low,
            tasks: [Task(name: "Watch the Bills")]
        ),
        PrioritizedTasks(
            priority: .no,
            tasks: [Task(name: "Pick up Frank")]
        ),
    ]
}
