//
//  LoginView.swift
//  todolist
//
//  Created by tarun rajpurohit on 08/09/23.
//

import SwiftUI
import SwiftUI
import FirebaseFirestore
import FirebaseAuth
struct LoginView: View {
    @StateObject var viewswi=LoginViewswi()
    
    var body: some View {
        NavigationView{
            VStack{
                HeaderView(title: "To-DO",subtitle: "Welcomes U ! ",angle: 15,bgcolor: Color.pink,offset: -100)
              
                if  !($viewswi.errorr.wrappedValue=="") {
                    Text($viewswi.errorr.wrappedValue).foregroundColor(Color.red)
                }
                
                //middle component
                Form{
                    TextField("Email Address",text: $viewswi.email).textFieldStyle(RoundedBorderTextFieldStyle())
                    SecureField("Password",text: $viewswi.password).textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    Button{
                        viewswi.login()
                    }label: {
                        ZStack{
                            RoundedRectangle(cornerRadius: 10).foregroundColor(Color.blue)
                            Text("Log In").foregroundColor(Color.white).bold()
                        }
                    }
                }
                
                //end component
                
                VStack{
                    Text("New around here?")
                    NavigationLink("create An Account",destination: RegisterView())
                }
                
                Spacer()
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
