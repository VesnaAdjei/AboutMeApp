//
//  ContentView.swift
//  AboutMeApp
//
//  Created by scholar on 7/27/23.
//

import SwiftUI

struct ContentView: View {
    @State private var text = ""
    @State private var text2 = ""
    var body: some View {
        ZStack{
            Color(red: 0.9, green: 0.4, blue: 0.4)
                .ignoresSafeArea()
            VStack{
            Spacer()
                Image("me")
                    .resizable(capInsets: EdgeInsets(), resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 300.0, height: 300.0)
                    .cornerRadius(200)
                    .shadow(radius : 15)
                    

                HStack(alignment: .top){
                    Image("cooking")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 200.0, height: 200.0)
                        .cornerRadius(50)
                        .shadow(radius : 15)
                    Image("spiderman")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 200.0, height: 200.0)
                        .cornerRadius(50)
                        .shadow(radius : 15)
                } //HStack
    
                HStack{
                    Button("Click me!"){
                        text = "My name is Vesna"
                    } .buttonStyle(.borderedProminent)
                        .tint(Color(hue: 0.732, saturation: 1.0, brightness: 1.0))
                        .foregroundColor(Color(hue: 0.579, saturation: 0.651, brightness: 1.0))
                    Button("Click me!"){
                        text2 = "I like spiderman and cooking"}
    
                    .buttonStyle(.borderedProminent)
                    .tint(Color(hue: 0.732, saturation: 1.0, brightness: 1.0))
                    .foregroundColor(Color(hue: 0.579, saturation: 0.651, brightness: 1.0))
                    
                }
                Text(text)
                    .font(.title)
                    .foregroundColor(Color(hue: 0.579, saturation: 0.651, brightness: 1.0))
                
                Text(text2)
                    .font(.title)
                    .foregroundColor(Color(hue: 0.579, saturation: 0.651, brightness: 1.0))
                Spacer(minLength: 10)
            }
            .background(Rectangle().frame(width: 400.0, height: 700.0) .foregroundColor(.black
))
            .cornerRadius(150)
            .shadow(radius : 15)
        }// ZStack
    }//View
}//Struct

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
