//
//  MainView.swift
//  VideoAppTest
//
//  Created by Paula on 12/01/2023.
//

import SwiftUI

struct MainView: View {

  @ObservedObject var videoModelManager : VideoModelManager
  
    var body: some View {
      NavigationView {
        VStack(alignment: .leading) {
          
          ForEach(videoModelManager.dataModel.sorted(by: { $0.numberOfViews > $1.numberOfViews
          } )) { (video) in
            NavigationLink(destination: VideoPlayerView(video: video, videoModelManager: videoModelManager), label: {
              VideoRow(video: video)
                .foregroundColor(.black)
                .padding(.vertical, 5)
            })
          }
        }
        .navigationTitle("Video")
        .padding(.horizontal, 10)
      }
    }
}



struct MainView_Previews: PreviewProvider {
    static var previews: some View {
      MainView(videoModelManager: VideoModelManager())
    }
}
