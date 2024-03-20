//
//  ContentView.swift
//  ToDoList
//
//  Created by Kota Aso on 2024/03/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                Text("ジョギングをする")
                Text("お花に水をやる")
                Text("部屋の掃除をする")
                Text("本を読む")

            }
                .padding()
                .navigationTitle("ToDo List")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
