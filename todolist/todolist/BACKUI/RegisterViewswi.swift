//
//  RegisterViewswi.swift
//  todolist
//
//  Created by tarun rajpurohit on 08/09/23.
//
import FirebaseFirestore
import Foundation
import FirebaseAuth
class RegisterViewswi:ObservableObject{
    @Published var name=""
    @Published var email=""
    @Published var password=""
  
    init(){
        
    }
    func register(){
        print("ohkk done database 1")
        Auth.auth().createUser(withEmail: email, password: password){ [weak self]result , error in
            guard let userid=result?.user.uid else{
                print("ohkk done database 2")
                return
            }
            
           
            self?.insertUserRecord(id:userid)
            
          
            
        }
    }
    
    private func insertUserRecord(id:String){
        let newUser=User(id: id, name: name, eamil: email, joined: Date().timeIntervalSince1970)
        
        //convert it to json
        
        let db=Firestore.firestore()
        
        db.collection("users").document(id).setData(newUser.asDictionary())
        
    }
    
    private func validate(){
        
    }
    
}


