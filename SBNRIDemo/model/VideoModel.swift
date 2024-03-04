//
//  VideoModel.swift
//  sarfarazali Project
//
//  Created by Sarfaraz Ali on 29/08/23.
//

import Foundation
import UIKit


struct VideoList: Codable {
    let sectionType:String
    let title: String
    let isHorzotal: Bool
    let list: [VideoInfo]
}

struct VideoInfo: Codable {
    
    let title: String
    let discruption: String
    let color:String
}

let getVideoList = [
    VideoList(sectionType: "Short", title: "Short  Video", isHorzotal: true, list: [
        VideoInfo(title: "Short Video", discruption: "Short Video",color: "333FFF"),
        VideoInfo(title: "Short Video", discruption: "Short Video", color: "333FFF" ),
        VideoInfo(title: "Short Video", discruption: "Short Video", color: "333FFF"),
        VideoInfo(title: "Short Video", discruption: "Short Video",color: "333FFF"),
        VideoInfo(title: "Short Video", discruption: "Short Video",color: "333FFF"),
        VideoInfo(title: "Short Video", discruption: "Short Video",color: "333FFF")
    ]),
    
    VideoList(sectionType: "video", title: "Short  Video", isHorzotal: false, list: [
        VideoInfo(title: "Video", discruption: "Video", color: "33FF61"),
        VideoInfo(title: "Video", discruption: "Video", color:"33FF61"),
        VideoInfo(title: "Video", discruption: "Video", color: "33FF61"),
        VideoInfo(title: "Video", discruption: "Video", color: "33FF61"),
    ]),
    
    VideoList(sectionType: "Short", title: "Short  Video", isHorzotal: true, list: [
        VideoInfo(title: "hShort  Video", discruption: "Short  Video",color: "333FFF"),
        VideoInfo(title: "Short  Video", discruption: "Short  Video", color: "333FFF" ),
        VideoInfo(title: "Short  Video", discruption: "Short  Video", color: "333FFF"),
        VideoInfo(title: "Short  Video", discruption: "Short  Video",color: "333FFF"),
        VideoInfo(title: "Short Video", discruption: "Short Video",color: "333FFF"),
        VideoInfo(title: "Short Video", discruption: "Short Video",color: "333FFF")
    ]),
    
    VideoList(sectionType: "video", title: "Short  Video", isHorzotal: false, list: [
        VideoInfo(title: "Video", discruption: "Video", color: "33FF61"),
        VideoInfo(title: "Video1", discruption: "Video", color:"33FF61"),
        VideoInfo(title: "Video", discruption: "Video", color: "33FF61"),
        VideoInfo(title: "Video", discruption: "Video", color: "33FF61"),
    ]),
    
    VideoList(sectionType: "Short", title: "Short  Video", isHorzotal: true, list: [
        VideoInfo(title: "Short  Video", discruption: "Short  Video",color: "333FFF"),
        VideoInfo(title: "Short  Video", discruption: "Short  Video", color: "333FFF" ),
        VideoInfo(title: "Short  Video", discruption: "Short  Video", color: "333FFF"),
        VideoInfo(title: "Short  Video", discruption: "Short  Video",color: "333FFF"),
        VideoInfo(title: "Short Video", discruption: "Short Video",color: "333FFF"),
        VideoInfo(title: "Short Video", discruption: "Short Video",color: "333FFF")
    ]),
    
    VideoList(sectionType: "video", title: "Short  Video", isHorzotal: false, list: [
        VideoInfo(title: "Video", discruption: "Video", color: "33FF61"),
        VideoInfo(title: "KKVideoK", discruption: "Video", color:"33FF61"),
        VideoInfo(title: "Video", discruption: "Video", color: "33FF61"),
        VideoInfo(title: "Video", discruption: "Video", color: "33FF61"),
    ]),
]





