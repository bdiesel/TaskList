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
        "Watch the Bills"
    ].map { Task(name: $0) }
}
