//
//  NeuButtonStyle.swift
//  RGBullsEye
//
//  Created by 晟骏 王 on 2021/6/10.
//

import SwiftUI

struct NeuButtonStyle: ButtonStyle {
  let width: CGFloat
  let height: CGFloat
  
  func makeBody(configuration: Self.Configuration) -> some View {
    configuration.label
//    .foregroundColor(Color(UIColor.systemBlue))
    .frame(width: width, height: height)
    .opacity(configuration.isPressed ? 0.2 : 1)
    .background(
      Group {
        if configuration.isPressed {
          Capsule()
            .fill(Color.element)
            .southEastShadow()
        } else {
          Capsule()
            .fill(Color.element)
            .northWestShadow()
        }
      }
    )
  }
}
