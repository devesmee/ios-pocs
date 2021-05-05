//
//  Album.swift
//  jsonPractice
//
//  Created by Student on 19/09/2019.
//  Copyright © 2019 Esmee Kluijtmans. All rights reserved.
//

import Foundation

struct Album: Codable{
    var id: Int
    var title: String
    var thumbnailUrl: String
}
