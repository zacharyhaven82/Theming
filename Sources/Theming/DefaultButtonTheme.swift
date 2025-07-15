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
public struct DefaultButtonTheme {
    public let backgroundColor: Color = Color(StyleDictionaryEnum.buttonPrimaryBackground)
    public let foregroundColor: Color = Color(StyleDictionaryEnum.buttonPrimaryText)
    public let cornerRadius: CGFloat = CGFloat(StyleDictionaryEnum.buttonBorderRadius)
}
