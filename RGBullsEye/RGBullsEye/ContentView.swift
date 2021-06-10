//
//  ContentView.swift
//  RGBullsEye
//
//  Created by 晟骏 王 on 2021/6/10.
//

import SwiftUI

struct ContentView: View {
  @State var game = Game()
  @State var guess: RGB
  @State var showScore = false
  
  let circleSize: CGFloat = 0.5
  let labelWidth: CGFloat = 0.53
  let labelHeight: CGFloat = 0.06
  let buttonWidth: CGFloat = 0.87
  
  var body: some View {
    GeometryReader { geometry in
      ZStack {
        Color.element.edgesIgnoringSafeArea(.all)
        VStack {
          ColorCircle(rgb: game.target, size: geometry.size.width * circleSize)
          if !showScore {
            BevelText(text: "R: ??? G: ??? B: ???", width: geometry.size.width * labelWidth, height: geometry.size.height * labelHeight)
          } else {
            BevelText(text: game.target.initString(), width: geometry.size.width * labelWidth, height: geometry.size.height * labelHeight)
          }
          ColorCircle(rgb: guess, size: geometry.size.width * circleSize)
          BevelText(text: guess.initString(), width: geometry.size.width * labelWidth, height: geometry.size.height * labelHeight)
          ColorSlider(value: $guess.red, trackColor: .red)
          ColorSlider(value: $guess.green, trackColor: .green)
          ColorSlider(value: $guess.blue, trackColor: .blue)
          Button("Hit Me!") {
            showScore = true
            game.check(guess: guess)
          }
          .buttonStyle(NeuButtonStyle(width: geometry.size.width * buttonWidth, height: geometry.size.height * labelHeight))
          .alert(isPresented: $showScore) {
            Alert(
              title: Text("Your Score"),
              message: Text(String(game.scoreRound)),
              dismissButton: .default(Text("OK")) {
                game.startNewRound()
                guess = RGB()
              })
          }
        }.font(.headline)
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    Group {
      ContentView(guess: RGB())
        .previewDevice("iPhone 8")
      ContentView(guess: RGB())
      ContentView(guess: RGB())
        .previewDevice("iPhone 12 Pro Max")
        
//        .preferredColorScheme(.dark)
    }
  }
}

struct ColorSlider: View {
  @Binding var value: Double
  var trackColor: Color
  
  var body: some View {
    HStack {
      Text("0")
      Slider(value: $value)
        .accentColor(trackColor)
      Text("255")
    }
    .padding(.horizontal)
    .font(.subheadline)
  }
}

//struct ColorCircle: View {
//  var rgb: RGB
//  var body: some View {
//    Circle().fill(Color(rgbStruct: rgb))
//  }
//}
