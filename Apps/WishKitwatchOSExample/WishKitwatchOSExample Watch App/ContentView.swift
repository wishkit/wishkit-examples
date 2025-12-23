//
//  ContentView.swift
//  WishKitwatchOSExample Watch App
//
//  Created by Martin Lasek on 12/21/25.
//

import SwiftUI
import WishKit

struct ContentView: View {
    @State private var showingSheet = false

    var body: some View {
        NavigationStack {
            List {
                Section("Navigation") {
                    NavigationLink("Push Feedback") {
                        WishKit.FeedbackListView()
                    }
                }

                Section("Presentation") {
                    Button("Present Sheet") {
                        showingSheet = true
                    }
                }

                Section("Notes") {
                    Text("Use each scenario to validate UI rendering and interaction.")
                        .font(.footnote)
                        .foregroundStyle(.secondary)
                }
            }
            .navigationTitle("WishKit")
            .sheet(isPresented: $showingSheet) {
                WishKit.FeedbackListView().withNavigation()
            }
        }
    }
}

#Preview {
    ContentView()
}
