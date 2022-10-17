//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Andrew Kombouras on 10/17/22.
//

import SwiftUI

@main
struct ToDoListApp: App {
    @StateObject var toDosVM = ToDosViewModel()
    
    var body: some Scene {
        WindowGroup {
            ToDoListView()
                .environmentObject(toDosVM)
        }
    }
}
