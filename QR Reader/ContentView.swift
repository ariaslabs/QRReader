//
//  ContentView.swift
//  QR Reader
//
//  Created by Christopher Arias on 6/20/23.
//

import SwiftUI

struct ContentView: View {
    @State private var isShowingScanner = false
  
    var body: some View {
        TabView {
            CameraView().tabItem {
                Image(systemName: "qrcode.viewfinder")
                Text("QR Reader")
            }
            
            HistoryListView().tabItem {
                Image(systemName: "list.bullet")
                Text("History")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
