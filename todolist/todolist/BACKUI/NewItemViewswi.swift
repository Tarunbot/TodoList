//
//  NewItemViewswi.swift
//  todolist
//
//  Created by tarun rajpurohit on 09/09/23.
//

import Foundation
import FirebaseAuth
import FirebaseFirestore
class NewItemViewswi:ObservableObject{
    @Published var title=""
    @Published var dueDate=Date()
    
    init(){
        
    }
    
    func save(){
        //get currentuser id
        let uid=Auth.auth().currentUser?.uid
        
        //create model
        let newId=UUID().uuidString
        let newItem=todolistitemmodel(id: newId, title: title, dueDate:dueDate.timeIntervalSince1970, createdDate: Date().timeIntervalSince1970, isDone: false)
        
        //save model
        let db=Firestore.firestore()
        
        db.collection("users")
            .document(uid!)
            .collection("todos")
            .document(newId)
            .setData(newItem.asDictionary())
    }
    
    
}
