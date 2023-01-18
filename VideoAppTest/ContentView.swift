//
//  ContentView.swift
//  VideoAppTest
//
//  Created by Paula on 12/01/2023.
//

import SwiftUI

struct ContentView: View {
  @StateObject var videoModelManager = VideoModelManager()
  
    var body: some View {
      MainView(videoModelManager: videoModelManager)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
