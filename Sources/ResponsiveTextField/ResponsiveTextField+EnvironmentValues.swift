//
//  ResponsiveTextField+EnvironmentValues.swift
//  TextField
//
//  Created by Luke Redpath on 14/03/2021.
//

import CombineSchedulers
import SwiftUI

// MARK: - Environment Keys

extension ResponsiveTextField {
    fileprivate struct KeyboardReturnTypeKey: EnvironmentKey {
        
        static let defaultValue: UIReturnKeyType = .default
    }

    fileprivate struct FontKey: EnvironmentKey {
        static let defaultValue: NSFont = .preferredFont(forTextStyle: .body)
    }

    fileprivate struct TextColorKey: EnvironmentKey {
        static let defaultValue: NSColor = .black
    }

    fileprivate struct TextAlignmentKey: EnvironmentKey {
        static let defaultValue: NSTextAlignment = .natural
    }

    fileprivate struct FirstResponderDemandKey: EnvironmentKey {
        static let defaultValue: FirstResponderDemand? = nil
    }

    fileprivate struct ResponderSchedulerKey: EnvironmentKey {
        static let defaultValue: AnySchedulerOf<RunLoop> = .main
    }
}

// MARK: - Environment Values

extension EnvironmentValues {
    var keyboardReturnKeyType: UIReturnKeyType {
        get { self[ResponsiveTextField.KeyboardReturnTypeKey.self] }
        set { self[ResponsiveTextField.KeyboardReturnTypeKey.self] = newValue }
    }

    var textFieldFont: NSFont {
        get { self[ResponsiveTextField.FontKey.self] }
        set { self[ResponsiveTextField.FontKey.self] = newValue }
    }

    var textFieldTextColor: NSColor {
        get { self[ResponsiveTextField.TextColorKey.self] }
        set { self[ResponsiveTextField.TextColorKey.self] = newValue }
    }

    var textFieldTextAlignment: NSTextAlignment {
        get { self[ResponsiveTextField.TextAlignmentKey.self] }
        set { self[ResponsiveTextField.TextAlignmentKey.self] = newValue }
    }

    var firstResponderStateDemand: FirstResponderDemand? {
        get { self[ResponsiveTextField.FirstResponderDemandKey.self] }
        set { self[ResponsiveTextField.FirstResponderDemandKey.self] = newValue }
    }

    public var responderScheduler: AnySchedulerOf<RunLoop> {
        get { self[ResponsiveTextField.ResponderSchedulerKey.self] }
        set { self[ResponsiveTextField.ResponderSchedulerKey.self] = newValue }
    }
}
