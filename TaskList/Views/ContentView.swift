//
//  ContentView.swift
//  TaskList
//
//  Created by Brian Diesel on 12/15/19.
//  Copyright © 2019 DesignCondition. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var taskStore: TaskStore
    @State var modalIsPresented = false
    
    var body: some View {
        NavigationView{
            List{
                ForEach(taskStore.tasks){ index in
                    RowView(task: self.$taskStore.tasks[index])
                }
                .onMove{ sourceIdx, destinationIdx in
                    self.taskStore.tasks.move(
                        fromOffsets: sourceIdx,
                        toOffset: destinationIdx)
                }
                .onDelete{ indexSet in
                    self.taskStore.tasks.remove(atOffsets: indexSet)
                }
            }
            .navigationBarTitle("Tasks")
            .navigationBarItems(
                leading: EditButton(),
                trailing: Button(action: {
                    self.modalIsPresented = true})
                {
                    Image(systemName: "plus")
                })
        }
        .sheet(isPresented: $modalIsPresented){
            NewTaskView(taskStore: self.taskStore)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(taskStore: TaskStore())
    }
}
