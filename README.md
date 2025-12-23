# WishKit Examples
Multi-project WishKit sample apps across Apple platforms: iOS, macOS, visionOS, tvOS, watchOS.

Current platform support:

| Platform | Status | Notes |
| --- | --- | --- |
| iOS | ✅ | Supported. |
| macOS | ✅ | Supported. |
| visionOS | ✅ | Supported. |
| tvOS | 🚧 | Work in progress. |
| watchOS | 🚧 | Work in progress. |

Minimal SwiftUI setup
Simple example that configures WishKit and shows the feedback list.
Set up WishKit once when your app starts, e.g. the app `init`. Then you can show the feedback list anywhere.

```swift
import SwiftUI
import WishKit

@main
struct ExampleApp: App {
    init() {
        WishKit.configure(with: "YOUR_API_KEY")
    }

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

struct ContentView: View {
    var body: some View {
        WishKit.FeedbackListView().withNavigation()
    }
}
```

Or, if you already have a `NavigationStack`/`NavigationView`:
Embed the feedback list inside your existing navigation container without `.withNavigation()`.

```swift
struct ContentView: View {
    var body: some View {
        NavigationStack {
            WishKit.FeedbackListView()
        }
    }
}
```
