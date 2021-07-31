//
//  ContentView.swift
//  Shared
//
//  Created by Luiz Carlos da Silva Araujo on 31/07/21.
//

import SwiftUI

struct ContentView: View {
    @Binding var document: HWSwift_100daysDocument

    var body: some View {
        TextEditor(text: $document.text)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(document: .constant(HWSwift_100daysDocument()))
    }
}
