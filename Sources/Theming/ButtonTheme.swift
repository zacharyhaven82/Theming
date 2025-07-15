//
//  File.swift
//  Theming
//
//  Created by Zachary Haven on 7/14/25.
//

import Foundation
import SwiftUI
import UIKit

@available(iOS 16.0, *)
public protocol ButtonThemeable {
    var backgroundColor: Color { get set }
    var foregroundColor: Color { get set }
    var cornerRadius: CGFloat { get set }
}

@available(iOS 16.0, *)
public struct DefaultButtonTheme: ButtonThemeable {
    public var backgroundColor: Color = Color(StyleDictionaryEnum.buttonPrimaryBackground)
    public var foregroundColor: Color = Color(StyleDictionaryEnum.buttonPrimaryText)
    public var cornerRadius: CGFloat = CGFloat(StyleDictionaryEnum.buttonBorderRadius)
}
