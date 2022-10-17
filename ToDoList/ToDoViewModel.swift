//
//  ToDoViewModel.swift
//  ToDoList
//
//  Created by Andrew Kombouras on 10/17/22.
//

import Foundation

class ToDosViewModel: ObservableObject {
    @Published var toDos: [ToDo] = []
    
    init() {
        //Temp data here. Will eventually load in saved data
        toDos.append(ToDo(item: "Learn Swift"))
        toDos.append(ToDo(item: "Build Apps"))
        toDos.append(ToDo(item: "Change the World"))
    }
    
    func saveToDo(toDo: ToDo, newToDo: Bool) {
        //if new, append to toDoVM.toDos else update the toDo that was passed in from the List
        if newToDo {
            toDos.append(toDo)
        } else {
            if let index = toDos.firstIndex(where: {$0.id == toDo.id}) {
                toDos[index] = toDo
            }
        }
    }
}
