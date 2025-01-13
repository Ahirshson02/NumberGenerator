//
//  ContentView.swift
//  IntroApp
//
//  Created by Debbie Hirshson on 1/9/25.
//

import SwiftUI

struct ContentView: View {
    @State var value: Int = 0
    var body: some View {
        
        VStack {
            Text("Number Counter and Generator!")
                .font(.system(size: 20))
                .fontWeight(.bold)
                .foregroundColor(Color.black)
            Text("\(value)")
                .frame(width: 250, height: 80, alignment: .trailing)
                .font(.system(size: 48))
                .padding(.all, 5.0)
                .border(Color.gray, width: 4)
                .cornerRadius(5)
                .padding(.bottom, 20)
            HStack{
                
                Button(action:{
                    crement(1) //separation of call and action has the call wait until press
                }) {
                    Image(systemName: "plus")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .foregroundColor(Color.green)
                        .padding(.all, 8)
                        .border(Color.blue, width: 5)
                        .cornerRadius(8)
                }
                Button(action:{
                    crement(-1) //separation of call and action has the call wait until press
                }) {
                    Image(systemName: "minus")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 50, height: 50)
                        .foregroundColor(Color.red)
                        .padding(.all, 8)
                        .border(Color.blue, width: 5)
                        .cornerRadius(8)
                }
                
            } //End HStack'
            .padding(.bottom, 20)
            Button(action:{
                random() //separation of call and action has the call wait until press
            }) {
                Image(systemName: "dice.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 50, height: 50)
                    .foregroundColor(Color.blue)
                    .padding(.all, 10)
                    .border(Color.blue, width: 5)
                    .cornerRadius(8)
            }
            .padding(.bottom, 100)
            
            Button(action:{
                crement(-value)
            }){
                Image(systemName: "gobackward")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 50, height: 50)
                    .foregroundStyle(Color.black)
                    .padding(.all, 4)
                    .border(Color.blue, width: 4)
                    .cornerRadius(5)
            }
            .padding(.leading, 250)
        }//end VStack
    }
    func crement(_ x:Int){
        //increase by 1
        value = value + x
    }
    func random(){
        value = Int.random(in: -1_000_000...1_000_000)
    }
    
}

#Preview {
    ContentView()
}
