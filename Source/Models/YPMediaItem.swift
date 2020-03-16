//
//  YPMediaItem.swift
//  YPImagePicker
//
//  Created by Nik Kov || nik-kov.com on 09.04.18.
//  Copyright © 2018 Yummypets. All rights reserved.
//

import UIKit
import Foundation
import AVFoundation
import Photos


@objc public class YPMediaPhoto : NSObject {
    
<<<<<<< HEAD
    @objc public var image: UIImage { return modifiedImage ?? originalImage }
    @objc public let originalImage: UIImage
    @objc public var modifiedImage: UIImage?
    @objc public let fromCamera: Bool
    @objc public let exifMeta : [String : Any]?
    @objc public var asset: PHAsset?
    
    @objc public init(image: UIImage, exifMeta : [String : Any]? = nil, fromCamera: Bool = false, asset: PHAsset? = nil) {
=======
    public var image: UIImage { return modifiedImage ?? originalImage }
    public let originalImage: UIImage
    public var modifiedImage: UIImage?
    public let fromCamera: Bool
    public let exifMeta: [String: Any]?
    public var asset: PHAsset?
    
    public init(image: UIImage, exifMeta: [String: Any]? = nil, fromCamera: Bool = false, asset: PHAsset? = nil) {
>>>>>>> e25f5401a0bfe2b5bbb1b901f7536c36ba7093da
        self.originalImage = image
        self.modifiedImage = nil
        self.fromCamera = fromCamera
        self.exifMeta = exifMeta
        self.asset = asset
    }
}

@objc public class YPMediaVideo : NSObject {
    
    @objc public var thumbnail: UIImage
    @objc public var url: URL
    @objc public let fromCamera: Bool
    @objc public var asset: PHAsset?

    @objc public init(thumbnail: UIImage, videoURL: URL, fromCamera: Bool = false, asset: PHAsset? = nil) {
        self.thumbnail = thumbnail
        self.url = videoURL
        self.fromCamera = fromCamera
        self.asset = asset
    }
}

public enum YPMediaItem  {
    case photo(p: YPMediaPhoto)
    case video(v: YPMediaVideo)
}

// MARK: - Compression

public extension YPMediaVideo {
    /// Fetches a video data with selected compression in YPImagePickerConfiguration
    func fetchData(completion: (_ videoData: Data) -> Void) {
        // TODO: place here a compression code. Use YPConfig.videoCompression
        // and YPConfig.videoExtension
        completion(Data())
    }
}

// MARK: - Easy access

public extension Array where Element == YPMediaItem {
    var singlePhoto: YPMediaPhoto? {
        if let f = first, case let .photo(p) = f {
            return p
        }
        return nil
    }
    
<<<<<<< HEAD
    public var multiplePhotos: [YPMediaPhoto]? {
        var photos : [YPMediaPhoto] = []
        for (_, item) in self.enumerated() {
            switch (item) {
            case .photo(let p):
                photos.append(p)
                break
            case .video(let _):
                break
            }
        }
        return photos
    }
    public var singleVideo: YPMediaVideo? {
=======
    var singleVideo: YPMediaVideo? {
>>>>>>> e25f5401a0bfe2b5bbb1b901f7536c36ba7093da
        if let f = first, case let .video(v) = f {
            return v
        }
        return nil
    }
}
