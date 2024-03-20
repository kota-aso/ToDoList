//
//  ContentView.swift
//  ToDoList
//
//  Created by Kota Aso on 2024/03/20.
//

import SwiftUI

struct ContentView: View {
    
    @State var taskData = [
        TaskData(title:"ジョギングをする" , completed: false),
        TaskData(title:"お花に水をやる" , completed: false),
        TaskData(title:"部屋の掃除をする" , completed: false),
        TaskData(title:"本を読む" , completed: false)
        ]
    var body: some View {
        NavigationView {
            List(0..<taskData.count, id:\.self) {index in
                Button(action: {
                    print("セルが押されました")
                    taskData[index].completed.toggle()
                }){
                    HStack {
                        if taskData[index].completed {
                            Image(systemName: "checkmark.circle.fill")
                        } else {
                            Image(systemName: "circle")
                        }
                        Text(taskData[index].title)
                    }
            }}
                .padding()
                .navigationTitle("ToDo List")
                .foregroundColor(.black)
        }
    }
}

struct TaskData: Identifiable {
    var title: String
    var completed: Bool
    var id = UUID()
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
