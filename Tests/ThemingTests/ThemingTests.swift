import Testing
@testable import Theming

@available(macOS 10.15, *)
@Test func testDesignTokensDecoding() async throws {
    let provider = await MainActor.run { DesignTokensProvider(fileName: "design-tokens.mock") }
    let tokens = await MainActor.run { provider.tokens }
    #expect(tokens.colors.primary == "#007AFF")
    #expect(tokens.colors.background == "#FFFFFF")
    #expect(tokens.fonts.primary == "SF Pro Display")
    #expect(tokens.fontSizes.body == 16)
    #expect(tokens.radius.medium == 8)
    #expect(tokens.button.height == 44)
}

@available(macOS 10.15, *)
@Test func testStaticAccessors() async throws {
    let provider = await MainActor.run { DesignTokensProvider(fileName: "design-tokens.mock") }
    let tokens = await MainActor.run { provider.tokens }
    let colors = tokens.colors
    let fonts = tokens.fonts
    let fontSizes = tokens.fontSizes
    let radius = tokens.radius
    let button = tokens.button
    #expect(colors.secondary == "#34C759")
    #expect(fonts.secondary == "SF Pro Text")
    #expect(fontSizes.caption == 12)
    #expect(radius.large == 16)
    #expect(button.cornerRadius == 8)
}
