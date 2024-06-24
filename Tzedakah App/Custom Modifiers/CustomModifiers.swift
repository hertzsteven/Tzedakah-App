//
//  CustomModifiers.swift
//  Tzedakah App
//
//  Created by Steven Hertz on 6/18/24.
//

import SwiftUI



enum TextStyleModifierType {
    case light, medium, bolder

    var size: CGFloat {
        switch self {
        case .light:
            return 14
        case .medium:
            return 18
        case .bolder:
            return 24
        }
    }

    var weight: Font.Weight {
        switch self {
        case .light:
            return .regular
        case .medium:
            return .medium
        case .bolder:
            return .semibold
        }
    }

    var foregroundColor: Color {
        switch self {
        case .light:
            return .gray
        case .medium:
            return .black
        case .bolder:
            return .black
        }
    }

    
}

//  MARK: -  funcs that build modifiers
struct ToolbarModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .toolbarBackground(
                .navBar,
                for: .navigationBar)
            .toolbarBackground(.visible, for: .navigationBar)
            .toolbarColorScheme(.dark, for: .navigationBar)
            .toolbarBackground(.visible, for: .navigationBar)
    }
}



extension View {
    func configureToolbar() -> some View {
        modifier(ToolbarModifier())
    }
    
}



struct FontColorSizePadEnum: ViewModifier {
    
    var textStyleModifierType: TextStyleModifierType
    
    init(textStyleModifierType: TextStyleModifierType) {
        self.textStyleModifierType = textStyleModifierType
    }

    func body(content: Content) -> some View {
        content
            .font(.system(size: textStyleModifierType.size, weight: textStyleModifierType.weight))
            .foregroundStyle(textStyleModifierType.foregroundColor)
    }
}

extension View {

    func fontColorSizePadEnum(textStyleModifierType: TextStyleModifierType) -> some View {
        self.modifier(FontColorSizePadEnum(textStyleModifierType: textStyleModifierType))
    }
}

