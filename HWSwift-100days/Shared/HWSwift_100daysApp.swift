//
//  HWSwift_100daysApp.swift
//  Shared
//
//  Created by Luiz Carlos da Silva Araujo on 31/07/21.
//

import SwiftUI

@main
struct HWSwift_100daysApp: App {
    var body: some Scene {
        DocumentGroup(newDocument: HWSwift_100daysDocument()) { file in
            ContentView(document: file.$document)
        }
    }
}
