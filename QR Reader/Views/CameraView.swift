//
//  CameraView.swift
//  QR Reader
//
//  Created by Christopher Arias on 6/20/23.
//

import SwiftUI
import CodeScanner

struct CameraView: View {
    @State private var isPresentingScanner = false
    @State private var scannedCode: String?

    
    var body: some View {
        NavigationView {
            VStack(spacing: 10) {
                if let code = scannedCode {
                    NavigationLink("Next page", destination: CodeScannedView(scannedCode: "\(scannedCode ?? "")" ), isActive: .constant(true)).hidden()
                }
                
                Button("Scan Code") {
                    isPresentingScanner = true
                }
                
                Text("Scan a QR code to begin")
            }
            .sheet(isPresented: $isPresentingScanner) {
                CodeScannerView(codeTypes: [.qr]) { response in
                    if case let .success(result) = response {
                        scannedCode = result.string
                        //NavigationLink("Next page", destination: CodeScannedView(scannedCode: "HLKSFOES"), isActive: .constant(true)).hidden()
                        isPresentingScanner = false
                    }
                }
            }
        }
    }
}

struct CameraView_Previews: PreviewProvider {
    static var previews: some View {
        CameraView()
    }
}
