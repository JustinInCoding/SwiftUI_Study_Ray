//
//  ColorExtension.swift
//  RGBullsEye
//
//  Created by 晟骏 王 on 2021/6/10.
//

import Foundation
import SwiftUI

extension Color {
  
  static let element = Color("Element")
  static let highlight = Color("Highlight")
  static let shadow = Color("Shadow")
  
  /// Create a Color view from an RGB object
  /// - Parameter rgb: The RGB object,
  init(rgbStruct rgb: RGB) {
    self.init(red: rgb.red, green: rgb.green, blue: rgb.blue)
  }
}
