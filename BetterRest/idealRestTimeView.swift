//
//  IdealRestTimeView.swift
//  BetterRest
//
//  Created by Ryan Prince on 9/8/22.
//

import SwiftUI

struct drawText: ViewModifier {
    let font = Font.system(size: 15, weight: .heavy, design: .default)
    
    func body(content: Content) -> some View {
        content
            .font(font)
    }
}

struct idealRestTimeView: View {
    let bedtime: String
    
    var body: some View {
        Section {
            HStack {
                Text("Your Ideal Bedtime:")
                    .modifier(drawText())
                    .foregroundColor(.red)
                Label("\(bedtime)", systemImage: "clock")
                    .modifier(drawText())
                    .foregroundColor(.blue)
                    .padding()
                    .labelStyle(.trailingIcon)
            }
        }
    }
}

struct IdealRestTimeView_Previews: PreviewProvider {
    static var previews: some View {
        idealRestTimeView(bedtime: "8:00 AM")
    }
}
