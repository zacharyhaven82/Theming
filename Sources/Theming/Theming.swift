//
//  File.swift
//  Theming
//
//  Created by Zachary Haven on 7/14/25.
//

import Foundation

// MARK: - Design Tokens Model

public struct DesignTokens: Codable, Sendable {
    public let colors: Colors
    public let fontSizes: FontSizes
    public let radius: Radius
    public let button: Button
}

// MARK: - DesignTokensProvider
public final class DesignTokensProvider: Sendable {
    static let shared = DesignTokensProvider()
    let tokens: DesignTokens

    private init(fileName: String = "design-tokens", fileExtension: String = "json") {
        let url = Bundle.module.url(forResource: fileName, withExtension: fileExtension)
        guard let url = url,
              let data = try? Data(contentsOf: url),
              let tokens = try? JSONDecoder().decode(DesignTokens.self, from: data) else {
            fatalError("Failed to load or decode \(fileName).\(fileExtension)")
        }
        self.tokens = tokens
    }

    // Static accessors
    public static var colors: Colors { shared.tokens.colors }
    public static var fontSizes: FontSizes { shared.tokens.fontSizes }
    public static var radius: Radius { shared.tokens.radius }
    public static var button: Button { shared.tokens.button }
}
