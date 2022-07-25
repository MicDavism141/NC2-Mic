//
//  ContentView.swift
//  ToLearnList1
//
//  Created by Micah Davis on 25/07/22.
//

import SwiftUI

struct ContentView: View {
    @State var ThingsToLearn = ""
    let paddingSize = 15.0
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                Text("Things to learn")
                    .bold()
//                    .padding
//                    .font(<#T##font: Font?##Font?#>)
                TextField("Learn XCode Insert Icon", text: $ThingsToLearn)
                Text("Learning Format")
                HStack {
                    Button(action: {
                    }) {
                        Text("Personal")
                    }
                    Button(action: {
                    }) {
                        Text("Personal")
                    }
                }
                Text("Priority Level")
                HStack {
                    Button(action: {
                    }) {
                        Text("Personal")
                    }
                    Button(action: {
                    }) {
                        Text("Personal")
                    }
                }
                Spacer()
            }
            .navigationTitle("Learning Objective")
            
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
