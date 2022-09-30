//
//  LabelStyling.swift
//  BetterRest
//
//  Created by Ryan Prince on 9/8/22.
//

import SwiftUI

struct BetterRestLabelStyling: LabelStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            configuration.icon
            configuration.title
        }
    }
}

extension LabelStyle where Self == BetterRestLabelStyling {
    static var trailingIcon: Self { Self() }
}
