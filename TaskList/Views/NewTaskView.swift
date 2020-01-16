//
//  NewTaskView.swift
//  TaskList
//
//  Created by Brian Diesel on 12/18/19.
//  Copyright © 2019 DesignCondition. All rights reserved.
//

import SwiftUI

struct NewTaskView: View {
    var taskStore: TaskStore
    @State var text = ""
    @State var priority: Task.Priority = .no
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        Form{
            TextField("Task Name", text: $text)
            Button("ADD"){
                let priorityIndex = self.taskStore.getIndex(for: self.priority)
                self.taskStore.prioritizedTasks[priorityIndex].tasks.append(
                    Task(name: self.text)
                )
                self.presentationMode.wrappedValue.dismiss()
            }.disabled(text.isEmpty)
        }
    }
}

struct NewTaskView_Previews: PreviewProvider {
    static var previews: some View {
        NewTaskView(taskStore: TaskStore())
    }
}
