//
//  MainViewswi.swift
//  todolist
//
//  Created by tarun rajpurohit on 08/09/23.
//

import Foundation


import FirebaseFirestore
import FirebaseAuth
class MainViewswi:ObservableObject{
    @Published var currentUserId:String=""
    private var handler:AuthStateDidChangeListenerHandle?
    
    init(){
        self.handler = Auth.auth().addStateDidChangeListener{[weak self] _,user in
            
            DispatchQueue.main.async {
                 self?.currentUserId = user?.uid ?? ""
            }
           
      
        }
        
        
    }
    
    public var isSignedIn:Bool{
        return Auth.auth().currentUser != nil
    }
}
