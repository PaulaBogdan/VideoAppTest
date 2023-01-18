//
//  VideoPlayer.swift
//  VideoAppTest
//
//  Created by Paula on 15/01/2023.
//

import SwiftUI
import AVKit


struct VideoPlayerView: View {
  @State private var player = AVPlayer()
  var isPlaying: Bool = false
  @State var video: VideoClip
  @ObservedObject var videoModelManager : VideoModelManager

    var body: some View {
      
      VideoPlayer(player: player)
        .onAppear {
          // getting the index of video in model and saving number of views in User defaults
          if let index = videoModelManager.dataModel.firstIndex(where: {$0.id == video.id }) {
            self.videoModelManager.dataModel[index].numberOfViews = videoModelManager.dataModel[index].numberOfViews + 1
            let numberOfViews = self.videoModelManager.dataModel[index].numberOfViews
            let userDefaults = UserDefaults.standard
            userDefaults.set(numberOfViews, forKey: "\(index)")
          }
          
          if let url = video.url {
            player = AVPlayer(url: URL(string: url)!)
            player.play()
          }
          
        }
        .onDisappear() {
            player.pause()
        }
     
      
    }
}
//
//struct VideoPlayerView_Previews: PreviewProvider {
//    static var previews: some View {
//      VideoPlayerView(dataModel: DataModel())
//    }
//}
