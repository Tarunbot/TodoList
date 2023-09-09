//
//  NewItemView.swift
//  todolist
//
//  Created by tarun rajpurohit on 09/09/23.
//

import SwiftUI

struct NewItemView: View {
    @StateObject var newitemview=NewItemViewswi()
    @Binding var trigger:Bool
    var body: some View {
        VStack{
            Text("New Item")
                .font((.system(size:32)))
                .bold()
            
            Form {
                
                //Title
                TextField("Title",text:$newitemview.title)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .padding()
                   
                
                
                //Due Date
                DatePicker("Due Date",selection: $newitemview.dueDate)
                    .datePickerStyle(GraphicalDatePickerStyle())
                    .padding()
                //Button
                
                Button{
                    //Action
                    newitemview.save()
                    trigger=false
                }label: {
                    ZStack{
                        RoundedRectangle(cornerRadius: 10).foregroundColor(Color.blue)
                        Text("ADD ITEM").foregroundColor(Color.white).bold()
                    }
                }
            }
        }
    }
}

struct NewItemView_Previews: PreviewProvider {
    static var previews: some View {
        NewItemView(trigger: Binding(get:{
            return true
        },set:{ _ in
            
        }))
    }
}
