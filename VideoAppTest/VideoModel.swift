//
//  VideoModel.swift
//  VideoAppTest
//
//  Created by Paula on 18/01/2023.
//

import Foundation

struct VideoClip: Codable, Identifiable {
  let id: Int
  let title: String
  let url: String?
  public var numberOfViews: Int = 0
  
  
  enum CodingKeys: String, CodingKey {
          case id = "id"
          case url = "manifest"
          case title = "title"
      }
}
