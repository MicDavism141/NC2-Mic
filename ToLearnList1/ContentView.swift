//
//  ContentView.swift
//  ToLearnList1
//
//  Created by Micah Davis on 25/07/22.
//

import SwiftUI

struct ContentView: View {
    @State var ThingsToLearn = ""
    @State var ResourceLink = ""
    @State var ResourceLinkTwo = ""
    @State var ResourceLinkThree = ""
    
    let paddingSize = 15.0
    
    @State var nextOpened = false
    
    
    var body: some View {
        NavigationView {
            
            VStack(alignment: .leading, spacing: 20)
            {
                Text("Things to Learn")
                    .bold()
                    .font(.title2)
                
                TextField("Learn XCode Insert Icon", text: $ThingsToLearn)
                    .font(.body)
                
                Group {
                    Text("Learning Format")
                        .bold()
                        .font(.title2)
                    
                    HStack {
                        Button(action: {
                        }) {
                            Text("Personal")
                        }
                        .buttonStyle(BorderedButtonStyle())
                        
                        Button(action: {
                            nextOpened = true
                        })
                        {
                            Text("Group")
                        }
                        .buttonStyle(BorderedButtonStyle())
                        .overlay(
                            NavigationLink(destination: GroupView(), isActive: $nextOpened) { EmptyView() }
                        )
                        
                        
                    }
                    
                }
            
            Group {
                Text("Priority Level")
                    .bold()
                    .font(.title2)
                
                HStack {
                    Button(action: {
                    }) {
                        Text("P1 - High")
                    }
                    .buttonStyle(BorderedButtonStyle())
                    
                    Button(action: {
                    }) {
                        Text("P2 - Medium")
                    }
                    .buttonStyle(BorderedButtonStyle())
                    Button(action: {
                    }) {
                        Text("P3 - Low")
                    }
                    .buttonStyle(BorderedButtonStyle())
                }
            }
            Group {
                Text("Resource Links")
                    .bold()
                    .font(.title2)
                
                TextField("www.linkedin.com", text: $ResourceLink)
                
                TextField("www.google.com", text: $ResourceLinkTwo)
                
                TextField("www.developer.apple.com", text: $ResourceLinkThree)
                
                Spacer()
            }
            .navigationTitle("Learning Objective")
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
}


