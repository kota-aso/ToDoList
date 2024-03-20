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
                HStack {
                    Image(systemName: "circle")
                    Text("ジョギングをする")
                }
                HStack {
                    Image(systemName: "checkmark.circle.fill")
                    Text("お花に水をやる")
                }
                HStack {
                    Image(systemName: "checkmark.circle.fill")
                    Text("部屋の掃除をする")
                }
                HStack {
                    Image(systemName: "checkmark.circle.fill")
                    Text("本を読む")
                }
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
