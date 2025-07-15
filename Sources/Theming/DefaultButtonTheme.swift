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
public enum DefaultButtonTheme {
    public static let backgroundColor: Color = Color(StyleDictionaryEnum.buttonPrimaryBackground)
    public static let foregroundColor: Color = Color(StyleDictionaryEnum.buttonPrimaryText)
    public static let cornerRadius: CGFloat = CGFloat(StyleDictionaryEnum.buttonBorderRadius)
}
