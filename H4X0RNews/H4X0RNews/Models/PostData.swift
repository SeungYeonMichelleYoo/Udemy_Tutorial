//
//  PostData.swift
//  H4X0RNews
//
//  Created by SeungYeon Yoo on 2023/10/03.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable { //Identifiable: 순서 인식 가능하게 함
    var id: String {
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String? //null인 경우 있으므로 ? 달아줌
}
