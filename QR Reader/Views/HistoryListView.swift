//
//  HistoryListView.swift
//  QR Reader
//
//  Created by Christopher Arias on 6/20/23.
//

import SwiftUI
import Foundation

struct HistoryListView: View {
    
//    let now = Date().now
//    let dateFormatter = DateFormatter()
    
    var scanHistory = [
        ScanHistoryModel(url: "https://www.google.com/"),
        ScanHistoryModel(url: "http://www.amazon.com/"),
        ScanHistoryModel(url: "http://www.topgolf.com/")
    ]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(scanHistory, id: \.id) { item in
                    NavigationLink {
                        HistoryDetailsView()
                    } label: {
                        HStack(spacing: 30) {
                            Text(item.url)
                                .frame(maxWidth: 400, maxHeight: 10, alignment: .leading)
                            Text("11/12/2023")
                                .frame(maxWidth: .infinity, alignment: .trailing)
                                .font(.caption)
                                .fontWeight(.light)
                            
                        }
                    }
                    
                }
            }
        }
    }
}

struct HistoryListView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryListView()
    }
}
