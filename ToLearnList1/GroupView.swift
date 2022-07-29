//
//  GroupView.swift
//  ToLearnList1
//
//  Created by Micah Davis on 26/07/22.
//

import SwiftUI

struct GroupView: View {
    @State var ThingsToLearn = ""
    @State var Notes = ""
    
    let paddingSize = 15.0
    
    var body: some View {
        NavigationView {
            
            VStack(alignment: .leading, spacing: 20) {
                Text("Things to Learn")
                    .bold()
                    .font(.title2)
                
                TextField("Learn Figma Prototype with Eric", text: $ThingsToLearn)
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
                        }) {
                            Text("Group")
                        }
                        .buttonStyle(BorderedButtonStyle())
                    }
                }
                Group {
                    Text("Priority Level")
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
                Text("Notes")
                TextField("Meetup at Green Office Park 9, Friday 3 PM", text: $Notes)
                Spacer()
                
            }
            .navigationTitle("Learning Objective")
        }
    }
}


