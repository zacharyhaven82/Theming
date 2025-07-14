//
//  File.swift
//  Theming
//
//  Created by Zachary Haven on 7/14/25.
//

import Foundation

public struct Colors: Codable, Sendable {
    public let primary: String
    public let secondary: String
    public let background: String
    public let surface: String
    public let error: String
    public let onPrimary: String
    public let onSecondary: String
    public let onBackground: String
    public let onSurface: String
}
