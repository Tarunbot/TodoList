//
//  LoginViewswi.swift
//  todolist
//
//  Created by tarun rajpurohit on 08/09/23.
//

import Foundation


import FirebaseFirestore
import FirebaseAuth
class LoginViewswi:ObservableObject{
    @Published var email=""
    @Published var password=""
    @Published var errorr="";
    init(){
        
    }
    
    func login(){
        if(email.isEmpty && password.isEmpty){
            
            password="hello ji"
            errorr="Not Valid credentials"
        }else{
            
            if(validate()){
                errorr="hello"
                password="aooo ji"
            }else{
                password="hello ji"
                errorr="Wrong Username or Password"
            }
            
        }
    }
    
    func validate()->Bool{
        return  false;
    }
}
