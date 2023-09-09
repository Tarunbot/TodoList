//
//  HomeView.swift
//  todolist
//
//  Created by tarun rajpurohit on 08/09/23.
//

import SwiftUI

import FirebaseFirestore
import FirebaseAuth
struct HomeView: View {
    
    @StateObject var homeview=HomeViewswi()
    @StateObject var mainview=MainViewswi()
    init(){}
    var body: some View {
        TabView{
            TodocompView(userId:mainview.currentUserId).tabItem{
                Label("Home",systemImage:"house")
                
            }
            InfoView().tabItem{
                Label("Profile",systemImage:"person.circle")
            }
            
            
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
