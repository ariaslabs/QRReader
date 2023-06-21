//
//  ScanHistoryModel.swift
//  QR Reader
//
//  Created by Christopher Arias on 6/20/23.
//

import Foundation


struct ScanHistoryModel {
    let id = UUID()
    let url: String
    let date = Date()
}
