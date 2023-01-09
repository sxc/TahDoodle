//
//  TaskListView.swift
//  TahDoodle
//
//  Created by Koharu on 2023/1/5.
//

import SwiftUI

struct TaskListView: View {
    
    @ObservedObject var taskStore: TaskStore
    
    var body: some View {
        List {
//            TaskView(title: "Take ou the trash")
//            TaskView(title: "Do the dishes")
//            TaskView(title: "Learn Swift")
            
            ForEach(taskStore.tasks) { task in
                TaskView(title: task.title)
                    .contextMenu {
                        Button("Delete") {
                            taskStore.remove(task)
                        }
                    }
                
            }.onDelete { indexSet in
                indexSet.forEach { index in
                    let task = taskStore.tasks[index]
                    taskStore.remove(task)
                    
                }
            }
            
        }
    }
}

struct TaskListView_Previews: PreviewProvider {
    static var previews: some View {
        TaskListView(taskStore: .sample)
    }
}
