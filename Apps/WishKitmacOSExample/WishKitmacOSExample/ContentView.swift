//
//  ContentView.swift
//  WishKitmacOSExample
//
//  Created by Martin Lasek on 12/21/25.
//

import SwiftUI
import WishKit

struct ContentView: View {
    @State private var showingSheet = false
    @State private var showingPopover = false

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
                        Button("Present Popover") {
                            showingPopover = true
                        }
                    }

                    Section("Notes") {
                        Text("Use each scenario to validate UI rendering and interaction.")
                            .font(.footnote)
                            .foregroundStyle(.secondary)
                    }
                }
                .navigationTitle("WishKit macOS")
            }
            .tabItem {
                Text("Scenarios")
            }

            WishKit.FeedbackListView().withNavigation()
                .tabItem {
                    Text("Feedback")
                }
        }
        .frame(minWidth: 700, minHeight: 500)
        .sheet(isPresented: $showingSheet) {
            WishKit.FeedbackListView().withNavigation()
                .frame(minWidth: 480, minHeight: 360)
        }
        .popover(isPresented: $showingPopover) {
            WishKit.FeedbackListView().withNavigation()
                .frame(width: 420, height: 420)
        }
    }
}

#Preview {
    ContentView()
}
