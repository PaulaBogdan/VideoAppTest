//
//  PlayerView.swift
//  VideoAppTest
//
//  Created by Paula on 13/01/2023.
//

import SwiftUI
import AVKit


struct PlayerView: View {
  
  var isPlaying: Bool = false
  var title: String
  var url: String?
  @State private var player = AVPlayer()

    var body: some View {
//      VStack(spacing: 100.0) {
        Text(title)
          .font(.system(size: 30))

      
        
//        HStack(spacing: 40.0) {
//          Image(systemName: "gobackward.10")
//          Image(systemName: isPlaying ? "pause" : "play")
//            .font(.system(size: 80))
//          Image(systemName: "goforward.10")
//
//        }
//        .font(.system(size: 40))
//
//        Spacer()
//      }
//      .background(Color.black)
//      .foregroundColor(.white)
//
      
    }
}

struct PlayerView_Previews: PreviewProvider {
    static var previews: some View {
      PlayerView(title: "First video", url: "" )
    }
}




class VideoManager {
  
  
 
  func playVideo() {
//    let playerLayer = AVPlayerLayer(player: player)
    
  }
  
  

  
  
}
