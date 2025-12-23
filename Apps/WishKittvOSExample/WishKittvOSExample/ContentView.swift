//
//  ContentView.swift
//  WishKittvOSExample
//
//  Created by Martin Lasek on 12/21/25.
//

import SwiftUI
import WishKit

struct ContentView: View {
    @State private var showingSheet = false
    @State private var showingFullScreen = false

    var body: some View {
        TabView {
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
                        Button("Present Full Screen") {
                            showingFullScreen = true
                        }
                    }

                    Section("Notes") {
                        Text("Use each scenario to validate focus and interaction.")
                            .font(.footnote)
                            .foregroundStyle(.secondary)
                    }
                }
                .navigationTitle("WishKit tvOS")
            }
            .tabItem {
                Text("Scenarios")
            }

            WishKit.FeedbackListView().withNavigation()
                .tabItem {
                    Text("Feedback")
                }
        }
        .sheet(isPresented: $showingSheet) {
            WishKit.FeedbackListView().withNavigation()
        }
        .fullScreenCover(isPresented: $showingFullScreen) {
            WishKit.FeedbackListView().withNavigation()
        }
    }
}

#Preview {
    ContentView()
}
