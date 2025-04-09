//
//  SudokuView.swift
//  Final Project
//
//  Created by Timothy R Allen on 4/2/25.
//

import SwiftUI

struct SudokuView: View {
  var body: some View {
    Grid{
      ForEach(0..<9){n in
        GridRow{
          ForEach(0..<9){i in
            Square(column: i, row: 0, section: Int((i / 3) + ((n / 3)*3)))
          }
        }
      }
    }
    Spacer()
  }
}

struct Square: View {
  var column: Int = 0
  var row: Int = 0
  var section: Int = 0
  var number: Int = 0
  
  var body: some View{
    Text(String(number))
      .foregroundColor(.black)
      .frame(width: 45.0, height: 45.0)
      .foregroundColor(.white)
      .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
      .padding(-5)
  }
}

#Preview {
  SudokuView()
}
