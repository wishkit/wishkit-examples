# Game Plan: Platform Validation Plan

Goal
- Validate WishKit can initialize, render core UI/flows, and perform a basic end-to-end action on iOS, macOS, watchOS, tvOS, and visionOS.

Global setup (apply to all platforms)
1) Core flow is the WishKit feedback list (`WishKit.FeedbackListView()`).
2) If required by the SDK, define a deterministic test user identity and add it to the WishKit bootstrap.

iOS (WishKitIOSExample)
1) Confirm UI renders, actions succeed, and errors are handled (empty states, network errors).
2) Run on an iPhone simulator and verify expected behavior.

macOS (WishKitmacOSExample)
1) Verify UI rendering and interactions in a desktop layout.
2) Build and run on macOS and verify expected behavior.

watchOS (WishKitwatchOSExample)
1) Attempt to build; capture compiler errors (expected until WishKit SwiftUI supports watchOS).
2) Once supported, confirm UI renders on small screen and interactions succeed.
3) Run on a watch simulator and verify behavior.

tvOS (WishKittvOSExample)
1) Attempt to build; capture compiler errors (expected until WishKit SwiftUI supports tvOS).
2) Once supported, confirm focus movement and selection trigger WishKit UI correctly.
3) Run on an Apple TV simulator and verify behavior.

visionOS (WishKitvisionOSExample)
1) Confirm UI renders comfortably in a windowed scene.
2) Run on a visionOS simulator and verify behavior.

Final validation
1) Build all targets from the workspace.
2) Run each target on its simulator (including watchOS).
3) Record any platform gaps (WishKit unsupported APIs, UI limitations).
