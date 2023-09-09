//
//  Todoitem.swift
//  todolist
//
//  Created by tarun rajpurohit on 09/09/23.
//

import SwiftUI

struct Todoitem: View {
    
    let item:todolistitemmodel
    


    var body: some View {
        
        VStack{
            Text(" \(item.title)       :     \(Date(timeIntervalSince1970: item.dueDate).formatted())").bold().foregroundColor(Color.black)
            Spacer()
        }
      
    }
}

struct Todoitem_Previews: PreviewProvider {
    static var previews: some View {
        Todoitem(item:.init(
            id:"123",
            title:"Get Milk",
            dueDate: Date().timeIntervalSince1970,
            createdDate: Date().timeIntervalSince1970,
            isDone: false
        ))
    }
}
