//
//  ContentView.swift
//  ScreenshotHide
//
//  Created by Yunus Emre Taşdemir on 20.09.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            List {
                NavigationLink {
                    ScreenshitPreventView {
                        GeometryReader {
                            let size = $0.size
                            
                            Image(.pic)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: size.width, height: size.height)
                                .clipShape(.rect(topLeadingRadius: 55, bottomTrailingRadius: 35))
                        }
                        .padding(15)
                    }
                    .navigationTitle ("IJustine")
                } label: {
                    Text("Show Image")
                }
                
                NavigationLink {
                    List {
                        Section("API Key") {
                            ScreenshitPreventView{
                                Text("ITU98DHGMmak812KUGNW" )
                                    .frame(maxWidth: .infinity, alignment: .leading)
                            }
                        }
                        
                        Section("APNS Key") {
                            ScreenshitPreventView{
                                Text("enitsujil")
                                    .frame(maxWidth: .infinity, alignment: .leading)
                            }
                        }
                    }
                    .navigationTitle("Key's")
                } label: {
                    Text("Show Security Keys!")
                }
            }
            .navigationTitle("My List")
        }
    }
}

#Preview {
    ContentView()
}
