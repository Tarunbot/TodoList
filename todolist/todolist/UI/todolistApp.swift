//
//  todolistApp.swift
//  todolist
//
//  Created by tarun rajpurohit on 08/09/23.
//

import SwiftUI
import FirebaseCore
@main
struct todolistApp: App {
    init(){
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
