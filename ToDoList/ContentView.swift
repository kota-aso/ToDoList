//
//  ContentView.swift
//  ToDoList
//
//  Created by Kota Aso on 2024/03/20.
//

import SwiftUI

struct ContentView: View {
    
    let taskData = ["ジョギングをする","お花に水をやる","部屋の掃除をする","本を読む"]
    var body: some View {
        NavigationView {
            List(0..<taskData.count, id:\.self) {index in
                Button(action: {
                    print("セルが押されました")
                }){
                    HStack {
                        Image(systemName: "circle")
                        Text(taskData[index])
                    }
            }}
                .padding()
                .navigationTitle("ToDo List")
                .foregroundColor(.black)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
