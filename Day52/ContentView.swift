//
//  ContentView.swift
//  Day52
//
//  Created by Mike Chirico on 12/5/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        Text("Hello, world!")
            .padding()
        
        
        
        Button(action: {
                    
                    let sb = SqliteBroker()
                    sb.myStart()
                    print("file url: \(sb.getDatabaseFileURL()) ")
                    
                    
                    let textToShare = "SQLite Database"
                    let url = sb.getDatabaseFileURL()
                    let objectsToShare = [textToShare, url] as [Any]
                    
                    share(items: objectsToShare)
                }){
                    Text("SQLite Send")
                        .padding(.all,30)
                        .padding([.top,.bottom],20)
                        .background(Color.blue)
                        .foregroundColor(Color.white)
                        .cornerRadius(5)
                        .shadow(radius: 25)
                        .font(Font.custom("Avenir-Black", size: 27))
                    
                    
                }
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
