//
//  ContentView.swift
//  AnApp
//
//  Created by ehrl on 18.10.20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LazyVStack{
            Text(random_fact)
                .padding();
            Button(action:{
                request_random_fact();
            }){
                HStack {
                    Image(systemName: "trash")
                        .font(.title)
                    Text("Get the newest random fact")
                        .padding()
                        .background(Color.purple)
                        .foregroundColor(.white)
                        .font(.title);
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
