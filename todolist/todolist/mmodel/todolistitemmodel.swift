//
//  todolistitemmodel.swift
//  todolist
//
//  Created by tarun rajpurohit on 09/09/23.
//

import Foundation


struct todolistitemmodel:Codable,Identifiable{
    let id:String
    let title:String
    let dueDate:TimeInterval
    let createdDate:TimeInterval
    var isDone:Bool
    
    mutating func setDone(_ state:Bool){
        isDone=state
    }
}
