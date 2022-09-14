//
//  ContentView.swift
//  CW5-1
//
//  Created by Deem on 14/09/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var chosen = ""
    
    @State var emojis = ["🫡", "🤯", "🕺🏽", "💛", "🔥", "🫥", "💩","💀"]
    
    
    var body: some View {
        
        ZStack {
            
//            Color(.gray)
//                .ignoresSafeArea()
//                .opacity(0.25)
            
            
            VStack {
                
                Text("Pick the emoji that represents you the most")
                    .font(.system(size: 30))
                    .foregroundColor(.mint)
                    .bold()
                    .multilineTextAlignment(.center)
                
                Text(chosen)
                    .font(.system(size: 80))
                    .frame(width: 100, height: 100, alignment: .center)
                    .padding()
                    
                
                ScrollView(.horizontal) {
                    HStack {
                        ForEach(emojis, id: \.self) { emoji in
                            HStack {
                                
                                Text(emoji)
                                    .font(.system(size: 80))
                                    .padding()
                                    .onTapGesture {
                                        chosen = emoji
                                    }
                    }
                    
            }
                        
                        
                
                    
                    
                    
                    
                    
                    
                    
//                    HStack {
//
//
//                        Text("🫡")
//                            .font(.system(size: 80))
//                            .frame(width: 100, height: 100, alignment: .center)
//                            .padding()
//                            .onTapGesture {
//                                chosen = "🫡"
//                            }
//
//                        Text("🕺🏽")
//                            .font(.system(size: 80))
//                            .frame(width: 100, height: 100, alignment: .center)
//                            .padding()
//                            .onTapGesture {
//                                chosen = "🕺🏽"
//                            }
//
//                        Text("🤯")
//                            .font(.system(size: 80))
//                            .frame(width: 100, height: 100, alignment: .center)
//                            .padding()
//                            .onTapGesture {
//                                chosen = "🤯"
//                            }
//
//                        Text("🥰")
//                            .font(.system(size: 80))
//                            .frame(width: 100, height: 100, alignment: .center)
//                            .padding()
//                            .onTapGesture {
//                                chosen = "🥰"
//                            }
//
//                        Text("🫥")
//                            .font(.system(size: 80))
//                            .frame(width: 100, height: 100, alignment: .center)
//                            .padding()
//                            .onTapGesture {
//                                chosen = "🫥"
//                            }
//
//                        Text("💩")
//                            .font(.system(size: 80))
//                            .frame(width: 100, height: 100, alignment: .center)
//                            .padding()
//                            .onTapGesture {
//                                chosen = "💩"
//                            }
//
//                        Text("🤷🏽‍♀️")
//                            .font(.system(size: 80))
//                            .frame(width: 100, height: 100, alignment: .center)
//                            .padding()
//                            .onTapGesture {
//                                chosen = "🤷🏽‍♀️"
//                            }
//
//
//                    }
                        
                    
                    
                }
                
            }
            
            
        }
        
        
        
            
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

}
