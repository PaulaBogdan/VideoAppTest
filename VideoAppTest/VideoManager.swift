//
//  ViewedVideoManager.swift
//  VideoAppTest
//
//  Created by Paula on 16/01/2023.
//

import Foundation


@MainActor class VideoModelManager : ObservableObject {

  let urlString = "http://zryjto.linuxpl.info/zadanko-api/hls.php"
  @Published var dataModel: [VideoClip] = []
  
  init() {
    Task {
      await downloadData()
    }
  }
  
  
  func downloadData() async {
    guard let url: URL = URL(string: urlString) else {
      print("invalid URL")
      return
    }
    
    do {
      let (data, _) = try await URLSession.shared.data(from: url)
      let decoder = JSONDecoder()
      decoder.dateDecodingStrategy = .iso8601
      
      if let decodedResponse = try? decoder.decode([VideoClip].self, from: data) {
        await MainActor.run {
          self.dataModel = decodedResponse
          print(self.dataModel)
        }
      }
      else {
        print("Failed")
      }
      
      for (i, _) in self.dataModel.enumerated() {
        self.dataModel[i].numberOfViews = UserDefaults.standard.object(forKey: "\(i)") as? Int ?? 0
      }
      
    } catch {
      print("Invalid data")
    }
  }
  
  
  
  
}


