# WishKit Scenarios

Goal
- Validate `WishKit.FeedbackListView()` across all platforms using every available SwiftUI presentation style per platform.
- Ensure navigation behavior, sizing, and UI layout are correct in each context.

Scope Notes
- Scenarios below are based on SwiftUI presentation styles available on each platform.
- If a platform does not support a presentation style, the build or runtime should surface it.
- watchOS and tvOS are currently expected to fail to compile until WishKit SwiftUI support lands; scenarios are the target state.

## iOS (WishKitIOSExample)

Scenarios
1) Tab bar root
   - `TabView` tab displays `WishKit.FeedbackListView()`.
2) Navigation push
   - `NavigationStack` → `NavigationLink` to `WishKit.FeedbackListView()`.
3) Sheet
   - `.sheet` presents `WishKit.FeedbackListView().withNavigation()`.
4) Full-screen cover
   - `.fullScreenCover` presents `WishKit.FeedbackListView().withNavigation()`.
5) Popover (iPad)
   - `.popover` presents `WishKit.FeedbackListView().withNavigation()`.

Validation
- Verify list rendering, add/vote flows, and empty/error states.
- Check safe areas and navigation bar behavior across all presentations.

## macOS (WishKitmacOSExample)

Scenarios
1) Tab bar root
   - `TabView` tab displays `WishKit.FeedbackListView().withNavigation()`.
2) Navigation push
   - `NavigationStack` → `NavigationLink` to `WishKit.FeedbackListView()`.
3) Sheet
   - `.sheet` presents `WishKit.FeedbackListView().withNavigation()`.
4) Popover
   - `.popover` presents `WishKit.FeedbackListView().withNavigation()`.

Validation
- Verify window sizing, toolbar/nav behavior, and list layout density.

## watchOS (WishKitwatchOSExample)

Scenarios
1) Navigation push
   - `NavigationStack` → `NavigationLink` to `WishKit.FeedbackListView()`.
2) Sheet
   - `.sheet` presents `WishKit.FeedbackListView().withNavigation()`.

Validation
- Verify readability, scrolling, and interaction on small screens.

## tvOS (WishKittvOSExample)

Scenarios
1) Tab bar root
   - `TabView` tab displays `WishKit.FeedbackListView().withNavigation()`.
2) Navigation push
   - `NavigationStack` → `NavigationLink` to `WishKit.FeedbackListView()`.
3) Sheet
   - `.sheet` presents `WishKit.FeedbackListView().withNavigation()`.
4) Full-screen cover
   - `.fullScreenCover` presents `WishKit.FeedbackListView().withNavigation()`.

Validation
- Verify focus movement, selection behavior, and list navigation.

## visionOS (WishKitvisionOSExample)

Scenarios
1) Tab bar root
   - `TabView` tab displays `WishKit.FeedbackListView().withNavigation()`.
2) Navigation push
   - `NavigationStack` → `NavigationLink` to `WishKit.FeedbackListView()`.
3) Sheet
   - `.sheet` presents `WishKit.FeedbackListView().withNavigation()`.
4) Full-screen cover
   - `.fullScreenCover` presents `WishKit.FeedbackListView().withNavigation()`.

Validation
- Verify layout in windowed scene, spacing, and control sizing.
