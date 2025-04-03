//
//  SudokuView.swift
//  Final Project
//
//  Created by Timothy R Allen on 4/2/25.
//

import SwiftUI

struct SudokuView: View {
  var body: some View {
    VStack {
      HStack {
        Section()
        Section()
        Section()
      }
      HStack {
        Section()
        Section()
        Section()
      }
      HStack {
        Section()
        Section()
        Section()
      }
    }
    .scaledToFit()
  }
}

struct Section: View {
  var body: some View{
    VStack {
      HStack {
        Square().padding(-5)
        Square().padding(-5)
        Square().padding(-5)
      }
      HStack {
        Square().padding(-5)
        Square().padding(-5)
        Square().padding(-5)
      }
      HStack {
        Square().padding(-5)
        Square().padding(-5)
        Square().padding(-5)
      }
    }
  }
}

struct Square: View {
  var body: some View{
    Text("1")
      .foregroundColor(.black)
      .frame(width: 45.0, height: 45.0)
      .foregroundColor(.white)
      .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
  }
}

#Preview {
  SudokuView()
}
