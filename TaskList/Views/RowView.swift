//
//  RowView.swift
//  TaskList
//
//  Created by Brian Diesel on 1/15/20.
//  Copyright © 2020 DesignCondition. All rights reserved.
//

import SwiftUI

struct RowView: View {
    @Binding var task: Task
    let checkmark = Image(systemName: "checkmark")

    var body: some View {
        NavigationLink(
        destination: TaskEditingView(task: $task)){
            if (task.completed){
                checkmark
            } else{
                checkmark.hidden()
            }
            Text(task.name)
                .strikethrough(task.completed)
        }
    }
}


struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView( task: .constant( Task(name: "ToDo: Name") ) )
    }
}
