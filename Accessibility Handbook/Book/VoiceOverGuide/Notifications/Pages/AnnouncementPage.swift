//
//  AnnouncementPage.swift
//  Accessibility Handbook
//
//  Created by Giovani Nascimento Pereira on 21/09/22.
//

import SwiftUI

struct AnnouncementPage: View, Page {
  var title: String = "Announcement"

  var body: some View {
    PageContent(next: LongPressPage()) {
      Group {

      }
      .toAny()
    }
  }
}
