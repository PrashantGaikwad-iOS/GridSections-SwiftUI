//
//  ContentView.swift
//  GridSections
//
//  Created by Prashant Gaikwad on 30/07/20.
//

import SwiftUI

struct ContentView: View {
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    var body: some View {
        NavigationView {
            ScrollView() {
                LazyVGrid(columns: columns, spacing: 10, pinnedViews: [.sectionHeaders]) {
                    Section(header: headerView(type: "1")) {
                        ForEach(1..<10) { i in
                            Text("Item: \(i)").frame(width: 100, height: 100, alignment: .center).background(Color.orange).cornerRadius(10.0)
                        }
                    }
                }
                
                LazyVGrid(columns: columns, spacing: 10, pinnedViews: [.sectionHeaders]) {
                    Section(header: headerView(type: "2")) {
                        ForEach(1..<10) { i in
                            Text("Item: \(i)").frame(width: 100, height: 100, alignment: .center).background(Color.blue).cornerRadius(10.0)
                        }
                    }
                }

                LazyVGrid(columns: columns, spacing: 10, pinnedViews: [.sectionHeaders]) {
                    Section(header: headerView(type: "3")) {
                        ForEach(1..<10) { i in
                            Text("Item: \(i)").frame(width: 100, height: 100, alignment: .center).background(Color.green).cornerRadius(10.0)
                        }
                    }
                }

                LazyVGrid(columns: columns, spacing: 10, pinnedViews: [.sectionHeaders]) {
                    Section(header: headerView(type: "4")) {
                        ForEach(1..<10) { i in
                            Text("Item: \(i)").frame(width: 100, height: 100, alignment: .center).background(Color.red).cornerRadius(10.0)
                        }
                    }
                }
            }
            .navigationTitle("Grid - Sticky Header")
        }
    }
    
    func headerView(type: String) -> some View{
            Text("Section \(type)")
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .foregroundColor(.black)
                .frame(maxWidth:.infinity)
                .background(Color.yellow)
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
