//
//  CodeScannedView.swift
//  QR Reader
//
//  Created by Christopher Arias on 6/20/23.
//

import SwiftUI

struct CodeScannedView: View {
    var scannedCode: String?
    
    var body: some View {
        Text( "\(scannedCode ?? "")")
    }
}

struct CodeScannedView_Previews: PreviewProvider {
    static var previews: some View {
        CodeScannedView(scannedCode: "jsdodsidoasjdao")
    }
}
