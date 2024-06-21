//
//  ScannyApp.swift
//  Scanny
//
//  Created by Nikhil Barik on 21/06/24.
//

import SwiftUI

@main
struct ScannyApp: App {
    
    @StateObject private var vm = AppViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(vm)
                .task {
                    await vm.requestDataScannerAccessStatus()
                }
        }
    }
}
