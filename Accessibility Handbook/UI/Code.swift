//
//  Code.swift
//  Accessibility Handbook
//
//  Created by Giovani Nascimento Pereira on 20/09/22.
//

import SwiftUI

struct Code: View {
  let uiKit: String
  let swiftUI: String

  init(uiKit: String, swiftUI: String) {
    self.uiKit = uiKit
    self.swiftUI = swiftUI
  }

  var body: some View {
    VStack(spacing: .regular) {
      codeBlock(code: uiKit, icon: .init(systemName: "uiwindow.split.2x1"), title: "UIKit")
      codeBlock(code: swiftUI, icon: .init(systemName: "swift"), title: "SwiftUI")
    }
  }

  @ViewBuilder
  private func codeBlock(code: String, icon: Image, title: String) -> some View {
    VStack(alignment: .leading, spacing: .regular) {
      HStack {
        icon
        Text(title)
          .font(.subheadline)
        Spacer()
      }
      Text(code)
        .font(.callout)
    }
    .padding()
    .background {
      RoundedRectangle(cornerRadius: 10.0)
        .foregroundColor(.secondaryBackground)
    }
  }
}