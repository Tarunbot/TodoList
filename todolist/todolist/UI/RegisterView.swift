//
//  RegisterView.swift
//  todolist
//
//  Created by tarun rajpurohit on 08/09/23.
//

import SwiftUI

import FirebaseFirestore
import FirebaseAuth
struct RegisterView: View {
    @StateObject var registerswi=RegisterViewswi()
    var body: some View {
        VStack{
            
            HeaderView(title: "Add Your Info", subtitle: "", angle: 15, bgcolor: Color.green,offset: -150)
        
          //middle component
           Form {
               TextField("Provide your name",text: $registerswi.name).textFieldStyle(RoundedBorderTextFieldStyle())
               TextField("Provide your email-Address",text: $registerswi.email).textFieldStyle(RoundedBorderTextFieldStyle())
                   
               SecureField("provide a password",text: $registerswi.password).textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    Button{
                        registerswi.register()
                        
                    }label: {
                        ZStack{
                            RoundedRectangle(cornerRadius: 10).foregroundColor(Color.blue)
                            Text("Register").foregroundColor(Color.white).bold()
                        }
                    }
            }
            
           //end component
            
            
            
            Spacer()
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
