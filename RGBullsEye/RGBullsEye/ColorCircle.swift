//
//  ColorCircle.swift
//  RGBullsEye
//
//  Created by 晟骏 王 on 2021/6/10.
//

import SwiftUI

struct ColorCircle: View {
  let rgb: RGB
  let size: CGFloat
  
  var body: some View {
    ZStack {
      Circle()
        .fill(Color.element)
        .northWestShadow()
      Circle()
        .fill(Color(rgbStruct: rgb))
        .padding(20)
    }
    .frame(width: size, height: size)
  }
}

struct ColorCircle_Previews: PreviewProvider {
  static var previews: some View {
    ZStack {
      Color.element
      ColorCircle(rgb: RGB(), size: 200)
    }
    .frame(width: 300, height: 300)
    .previewLayout(.sizeThatFits)
  }
}
