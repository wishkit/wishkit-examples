//
//  ContentView.swift
//  WishKitIOSExample
//
//  Created by Martin Lasek on 12/21/25.
//

import SwiftUI
import WishKit

struct ContentView: View {
    @State private var showingSheet = false
    @State private var showingFullScreen = false
    @State private var showingPopover = false

    init() {
        WishKit.config.buttons.doneButton.display = .show
    }
    
    var body: some View {
        TabView {
            NavigationView {
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
                        Button("Present Popover (iPad)") {
                            showingPopover = true
                        }
                    }

                    Section("Notes") {
                        Text("Use each scenario to validate UI rendering and interaction.")
                            .font(.footnote)
                            .foregroundStyle(.secondary)
                    }
                }
                .navigationTitle("WishKit iOS")
            }
            .tabItem {
                Label("Scenarios", systemImage: "list.bullet")
            }

            WishKit.FeedbackListView().withNavigation()
                .tabItem {
                    Label("Feedback", systemImage: "bubble.left.and.bubble.right")
                }
        }
        .sheet(isPresented: $showingSheet) {
            WishKit.FeedbackListView().withNavigation()
        }
        .fullScreenCover(isPresented: $showingFullScreen) {
            WishKit.FeedbackListView().withNavigation()
        }
        .popover(isPresented: $showingPopover) {
            WishKit.FeedbackListView().withNavigation()
                .frame(minWidth: 320, minHeight: 480)
        }
    }
}

#Preview {
    ContentView()
}
