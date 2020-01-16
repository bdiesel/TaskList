//
//  SectionView.swift
//  TaskList
//
//  Created by Brian Diesel on 1/16/20.
//  Copyright © 2020 DesignCondition. All rights reserved.
//

import SwiftUI

struct SectionView: View {
    @Binding var prioritizedTasks: TaskStore.PrioritizedTasks
    
    var body: some View {
        Section(
        header: Text("\(prioritizedTasks.priority.rawValue.capitalized) Priority")){
            ForEach(prioritizedTasks.tasks){ index in
                RowView(task: self.$prioritizedTasks.tasks[index])
            }
            .onMove{ sourceIdx, destinationIdx in
                self.prioritizedTasks.tasks.move(
                    fromOffsets: sourceIdx,
                    toOffset: destinationIdx)
            }
            .onDelete{ indexSet in
                self.prioritizedTasks.tasks.remove(atOffsets: indexSet)
            }
        }
    }
}
