//
//  HeaderView.swift
//  todolist
//
//  Created by tarun rajpurohit on 08/09/23.
//

import SwiftUI

struct HeaderView: View {
    let title:String
    let subtitle:String
    let angle:Double
    let bgcolor:Color
    let offset:CGFloat
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 0).foregroundColor(bgcolor).rotationEffect(Angle(degrees: angle))
            VStack{
                
                Text(title).bold().foregroundColor(Color.white).font(.system(size:40))
                Text(subtitle).bold().foregroundColor(Color.white).font(.system(size:10))
                
            }
        }.frame(width:UIScreen.main.bounds.width*3,height:400).offset(y:offset)
        
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(title: "Title", subtitle: "Subtitle", angle: 15, bgcolor: .blue,offset: 0)
    }
}
