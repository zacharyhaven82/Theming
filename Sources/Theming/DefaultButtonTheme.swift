//
//  File.swift
//  Theming
//
//  Created by Zachary Haven on 7/14/25.
//

import Foundation

public struct DefaultButtonTheme {
    var backgroundColor: Color = StyleDictionaryEnum.buttonPrimaryBackground.colorValue
    var foregroundColor: Color = StyleDictionaryEnum.buttonPrimaryText.colorValue
    var cornerRadius: CGFloat = StyleDictionaryEnum.buttonBorderRadius
}
