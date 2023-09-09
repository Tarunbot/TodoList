//
//  ContentView.swift
//  todolist
//
//  Created by tarun rajpurohit on 08/09/23.
//

import SwiftUI
import FirebaseFirestore
import FirebaseAuth
struct MainView: View {
    @StateObject var mainview=MainViewswi()
    
    var body: some View {
        if mainview.isSignedIn ,!mainview.currentUserId.isEmpty{
            //signed in
            HomeView()
        }else{
            LoginView()
        }
         
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
