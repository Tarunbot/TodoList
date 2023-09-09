//
//  TodocompView.swift
//  todolist
//
//  Created by tarun rajpurohit on 08/09/23.
//

import SwiftUI
import FirebaseFirestoreSwift

import FirebaseFirestore
import FirebaseAuth
struct TodocompView: View {
    @StateObject var todocompswi=ToDocompViewswi()
    private let userId:String
    @FirestoreQuery var items:[todolistitemmodel]
    
    
    
    init(userId:String){
        
        self.userId=userId
        
       
        self._items=FirestoreQuery(
            collectionPath:"users/bpcw8OoniSfGwoWL2DuoLLBF3rq1/todos")
    }
    
    
    
    
    
    var body: some View {
        NavigationView{
            VStack{
                List(items){
                    item in
                    Todoitem(item:item)



                }
            }.navigationTitle("To Do List")
                .toolbar{
                    Button{
                        //Action
                        todocompswi.showingNewItemView=true
                    }label: {
                    Image(systemName: "plus")
                    }
                }.sheet(isPresented: $todocompswi.showingNewItemView){
                    NewItemView(trigger: $todocompswi.showingNewItemView)
                }
        }
    }
}

struct TodocompView_Previews: PreviewProvider {
    static var previews: some View {
        TodocompView(userId: "bpcw8OoniSfGwoWL2DuoLLBF3rq1")
    }
}
