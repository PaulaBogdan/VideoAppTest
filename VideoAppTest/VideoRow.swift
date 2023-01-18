//
//  VideoRow.swift
//  VideoAppTest
//
//  Created by Paula on 13/01/2023.
//

import SwiftUI

struct VideoRow: View {
  @State var video: VideoClip

    var body: some View {
      VStack(alignment: .leading) {
        HStack {
          Text(video.title)
            .font(.system(size: 20))
            .foregroundColor(.black.opacity(0.8))
          Spacer()
        }
        .padding(10.0)
        .frame(height: 80)
        .background(Color.gray)
        .cornerRadius(12)
        .shadow(radius: 20)
      }
     
    }
}

struct VideoRow_Previews: PreviewProvider {
    static var previews: some View {
      VideoRow(video: VideoClip(id: 1, title: "First video, First video, First video,First video, First video", url: ""))
    }
}
