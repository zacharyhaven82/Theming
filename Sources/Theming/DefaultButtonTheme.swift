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
    var backgroundColor: Color = Color(StyleDictionaryEnum.buttonPrimaryBackground)
    var foregroundColor: Color = Color(StyleDictionaryEnum.buttonPrimaryText)
    var cornerRadius: CGFloat = CGFloat(StyleDictionaryEnum.buttonBorderRadius)
}
