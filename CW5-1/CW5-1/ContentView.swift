//
//  ContentView.swift
//  CW5-1
//
//  Created by Deem on 14/09/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var chosen = ""
    
    @State var chosen2 = ""
    
    @State var emojis = ["🫡", "🤯", "🕺🏽", "🤍", "🔥", "😭", "💩","💀", "🫠", "🥰"]
    
    @State var memes = ["wt1", "wt2", "wt4", "wt5", "wt7", "wt8", "wt9", "wt10" , "wt11"]
    
    var body: some View {
        
        ZStack {
            
//            Color(.gray)
//                .ignoresSafeArea()
//                .opacity(0.25)
            
            
            VStack {
                
                Text("Pick the emoji & the meme that represents you the most")
                    .font(.system(size: 30))
//                    .foregroundColor(.mint)
                    .bold()
                    .multilineTextAlignment(.center)
                    .padding()
                
                HStack {
                    
                    Text(chosen)
                        .font(.system(size: 80))
                        .frame(width: 100, height: 100, alignment: .center)
                        .padding()
                    
                    Image(chosen2)
                        .resizable()
                        .frame(width: 120, height: 120, alignment: .center)
                        .padding()
                }
                
                
                
                    
                
                ScrollView(.horizontal) {
                    HStack {
                        ForEach(emojis, id: \.self) { emoji in
                            HStack {
                                
                                Text(emoji)
                                    .font(.system(size: 60))
                                    .shadow(radius: 40)
                                    .padding()
                                    .onTapGesture {
                                        chosen = emoji
                                    }
                    }
                    
                        }
                        
//                        .background(.yellow)
//                            .colorMultiply(.white)
        }
                }
                        
                     
                ScrollView(.horizontal) {
                    
                    
                    HStack {
                        ForEach (memes, id: \.self) { meme in
                            HStack {
                                
                                Image(meme)
                                    .resizable()
                                    .frame(width: 100, height: 100, alignment: .center)
                                    
                                    .padding()
                                    .onTapGesture {
                                        
                                        chosen2 = meme
                                    }
                            }.shadow(radius: 20)
                            
                            
                            
                        }
//                        .background(.yellow)
                    
                    
                    
                    
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


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


