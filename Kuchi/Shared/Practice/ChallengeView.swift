/// Copyright (c) 2020 Razeware LLC
///
/// Permission is hereby granted, free of charge, to any person obtaining a copy
/// of this software and associated documentation files (the "Software"), to deal
/// in the Software without restriction, including without limitation the rights
/// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
/// copies of the Software, and to permit persons to whom the Software is
/// furnished to do so, subject to the following conditions:
///
/// The above copyright notice and this permission notice shall be included in
/// all copies or substantial portions of the Software.
///
/// Notwithstanding the foregoing, you may not use, copy, modify, merge, publish,
/// distribute, sublicense, create a derivative work, and/or sell copies of the
/// Software in any work that is designed, intended, or marketed for pedagogical or
/// instructional purposes related to programming, coding, application development,
/// or information technology.  Permission for such use, copying, modification,
/// merger, publication, distribution, sublicensing, creation of derivative works,
/// or sale is expressly withheld.
///
/// This project and source code may use libraries or frameworks that are
/// released under various Open-Source licenses. Use of those libraries and
/// frameworks are governed by their own individual licenses.
///
/// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
/// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
/// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
/// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
/// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
/// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
/// THE SOFTWARE.

import SwiftUI

struct ChallengeView: View {
  let challengeTest: ChallengeTest
  @State var showAnswers = false
  
  var body: some View {
    VStack {
      Button(action: {
        self.showAnswers.toggle()
      }, label: {
        QuestionView(question: challengeTest.challenge.question)
      })
      .frame(height: 300)
      
      if showAnswers {
        Divider()
        ChoicesView(challengeTest: challengeTest)
          .frame(height: 300)
          .padding()
      }
    }
  }
}


struct ChallengeView_Previews: PreviewProvider {
  
  static let challengeTest = ChallengeTest(
    challenge: Challenge(
      question: "おねがい　します",
      pronunciation: "Onegai shimasu",
      answer: "Please"
    ), answers: ["Thank you", "Hello", "Goodbye"]
  )
  
  static var previews: some View {
    return ChallengeView(challengeTest: challengeTest)
  }
}


//    Text("A great and warm welcome to Kuchi")
//      .background(Color.red)
////      .frame(width: 150, height: 50, alignment: .center)
////      .frame(width: 300, height: 100, alignment: .center)
//      .frame(width: 100, height: 50, alignment: .center)
//      .minimumScaleFactor(0.5)
//      .background(Color.yellow)
    
//    Image("welcome-background")
//      .resizable()
//      .background(Color.red)
//      .frame(width: 100, height: 50, alignment: .center)
//      .background(Color.yellow)
    
//    HStack {
//      Text("A great and warm welcome to Kuchi")
//        .background(Color.red)
////      Text("A great and warm welcome to Kuchi")
////        .background(Color.red)
//      Text("A great and warn welcome to Kuchi")
//        .background(Color.red)
//    }
//    .background(Color.yellow)
    
//    HStack {
//      Text("A great and warm welcome to Kuchi")
//        .background(Color.red)
//
//      Text("A great and warm welcome to Kuchi")
//        .layoutPriority(1)
//        .background(Color.red)
//
//      Text("A great and warm welcome to Kuchi")
//        .background(Color.red)
//    }
//    .background(Color.yellow)
    
//    HStack {
//      Text("A great and warm welcome to Kuchi")
//        .layoutPriority(-1)
//        .background(Color.red)
//
//      Text("A great and warm welcome to Kuchi")
//        .layoutPriority(1)
//        .background(Color.red)
//
//      Text("A great and warm welcome to Kuchi")
//        .background(Color.red)
//    }
//    .background(Color.yellow)
    
//    HStack(alignment: .lastTextBaseline) {
//      Text("Welcome to Kuchi").font(.caption)
//      Text("Welcome to Kuchi").font(.title)
//      Button(action: {}, label: {
//        Text("OK").font(.body)
//      })
//    }