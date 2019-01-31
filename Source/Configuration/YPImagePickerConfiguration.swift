//
//  YPImagePickerConfiguration.swift
//  YPImagePicker
//
//  Created by Sacha DSO on 18/10/2017.
//  Copyright © 2016 Yummypets. All rights reserved.
//

import Foundation
import AVFoundation
import UIKit
import Photos

/// Typealias for code prettiness
internal var YPConfig: YPImagePickerConfiguration { return YPImagePickerConfiguration.shared }

@objc public class YPImagePickerConfiguration : NSObject {
    @objc public static var shared: YPImagePickerConfiguration = YPImagePickerConfiguration()
    
    override public init() {}
    
    /// Scroll to change modes, defaults to true
    @objc public var isScrollToChangeModesEnabled = true
    
    // Library configuration
    @objc public var library = YPConfigLibrary()
    
    // Video configuration
    @objc public var video = YPConfigVideo()
    
    /// Use this property to modify the default wordings provided.
    @objc public var wordings = YPWordings()
    
    /// Use this property to modify the default icons provided.
    public var icons = YPIcons()
    
    /// Use this property to modify the default colors provided.
    public var colors = YPColors()
    
    /// Set this to true if you want to force the camera output to be a squared image. Defaults to true
    @objc public var onlySquareImagesFromCamera = true
    
    /// Enables selecting the front camera by default, useful for avatars. Defaults to false
    @objc public var usesFrontCamera = false
    
    /// Adds a Filter step in the photo taking process.  Defaults to true
    @objc public var showsFilters = true
    
    /// Enables you to opt out from saving new (or old but filtered) images to the
    /// user's photo library. Defaults to true.
    @objc public var shouldSaveNewPicturesToAlbum = true
    
    /// Defines the name of the album when saving pictures in the user's photo library.
    /// In general that would be your App name. Defaults to "DefaultYPImagePickerAlbumName"
    @objc public var albumName = "DefaultYPImagePickerAlbumName"
    
    /// Defines which screen is shown at launch. Video mode will only work if `showsVideo = true`.
    /// Default value is `.photo`
    public var startOnScreen: YPPickerScreen = .photo
    
    @objc public func startupLibrary() -> () {
        startOnScreen = .library
    }
    
    @objc public func startupPhoto() -> () {
        startOnScreen = .photo
    }
    /// Defines which screens are shown at launch, and their order.
    /// Default value is `[.library, .photo]`
    public var screens: [YPPickerScreen] = [.library, .photo]

    /// Adds a Crop step in the photo taking process, after filters.  Defaults to .none
    public var showsCrop: YPCropType = .none
    
    /// Ex: cappedTo:1024 will make sure images from the library or the camera will be
    /// resized to fit in a 1024x1024 box. Defaults to original image size.
    public var targetImageSize = YPImageSize.original
    
    /// Adds a Overlay View to the camera
    @objc public var overlayView = UIView()
    
    /// Defines if the status bar should be hidden when showing the picker. Default is true
    @objc public var hidesStatusBar = true
    
    /// Defines if the bottom bar should be hidden when showing the picker. Default is false.
    @objc public var hidesBottomBar = false

    /// Defines the preferredStatusBarAppearance
    @objc public var preferredStatusBarStyle = UIStatusBarStyle.default
    
    /// Defines the text colour to be shown when a bottom option is selected
    @objc public var bottomMenuItemSelectedColour = UIColor(r: 38, g: 38, b: 38)
    
    /// Defines the text colour to be shown when a bottom option is unselected
    @objc public var bottomMenuItemUnSelectedColour = UIColor(r: 153, g: 153, b: 153)
    
    /// List of default filters which will be added on the filter screen
    public var filters: [YPFilter] = [
        YPFilter(name: "Normal", applier: nil),
        YPFilter(name: "Nashville", applier: YPFilter.nashvilleFilter),
        YPFilter(name: "Toaster", applier: YPFilter.toasterFilter),
        YPFilter(name: "1977", applier: YPFilter.apply1977Filter),
        YPFilter(name: "Clarendon", applier: YPFilter.clarendonFilter),
        YPFilter(name: "HazeRemoval", applier: YPFilter.hazeRemovalFilter),
        YPFilter(name: "Chrome", coreImageFilterName: "CIPhotoEffectChrome"),
        YPFilter(name: "Fade", coreImageFilterName: "CIPhotoEffectFade"),
        YPFilter(name: "Instant", coreImageFilterName: "CIPhotoEffectInstant"),
        YPFilter(name: "Mono", coreImageFilterName: "CIPhotoEffectMono"),
        YPFilter(name: "Noir", coreImageFilterName: "CIPhotoEffectNoir"),
        YPFilter(name: "Process", coreImageFilterName: "CIPhotoEffectProcess"),
        YPFilter(name: "Tonal", coreImageFilterName: "CIPhotoEffectTonal"),
        YPFilter(name: "Transfer", coreImageFilterName: "CIPhotoEffectTransfer"),
        YPFilter(name: "Tone", coreImageFilterName: "CILinearToSRGBToneCurve"),
        YPFilter(name: "Linear", coreImageFilterName: "CISRGBToneCurveToLinear"),
        YPFilter(name: "Sepia", coreImageFilterName: "CISepiaTone"),
        ]
    
    /// Migration
    
    @available(*, obsoleted: 3.0.0, renamed: "video.compression")
    public var videoCompression: String = AVAssetExportPresetHighestQuality
    
    @available(*, obsoleted: 3.0.0, renamed: "video.fileType")
    public var videoExtension: AVFileType = .mov
    
    @available(*, obsoleted: 3.0.0, renamed: "video.recordingTimeLimit")
    public var videoRecordingTimeLimit: TimeInterval = 60.0
    
    @available(*, obsoleted: 3.0.0, renamed: "video.libraryTimeLimit")
    public var videoFromLibraryTimeLimit: TimeInterval = 60.0
    
    @available(*, obsoleted: 3.0.0, renamed: "video.minimumTimeLimit")
    public var videoMinimumTimeLimit: TimeInterval = 3.0
    
    @available(*, obsoleted: 3.0.0, renamed: "video.trimmerMaxDuration")
    public var trimmerMaxDuration: Double = 60.0

    @available(*, obsoleted: 3.0.0, renamed: "video.trimmerMinDuration")
    public var trimmerMinDuration: Double = 3.0
    
    @available(*, obsoleted: 3.0.0, renamed: "library.onlySquare")
    public var onlySquareImagesFromLibrary = false
    
    @available(*, obsoleted: 3.0.0, renamed: "library.onlySquare")
    @objc public var onlySquareFromLibrary = false
    
    @available(*, obsoleted: 3.0.0, renamed: "targetImageSize")
    public var libraryTargetImageSize = YPImageSize.original
    
    @available(*, obsoleted: 3.0.0, renamed: "library.mediaType")
    public var showsVideoInLibrary = false
    
    @available(*, obsoleted: 3.0.0, renamed: "library.mediaType")
    public var libraryMediaType = YPlibraryMediaType.photo
    
    @available(*, obsoleted: 3.0.0, renamed: "library.maxNumberOfItems")
    @objc public var maxNumberOfItems = 1
    
}

/// Encapsulates library specific settings.
@objc public class YPConfigLibrary : NSObject {
    
     public var options: PHFetchOptions? = nil
    
    /// Set this to true if you want to force the library output to be a squared image. Defaults to false
    @objc public var onlySquare = false
    
    /// Minimum width, to prevent selectiong too high images. Have sense if onlySquare is true and the image is portrait.
    public var minWidthForItem: CGFloat?
    
    /// Choose what media types are available in the library. Defaults to `.photo`
    public var mediaType = YPlibraryMediaType.photo
    
    /// Anything superior than 1 will enable the multiple selection feature.
    @objc public var maxNumberOfItems = 1
    
    /// Anything greater than 1 will desactivate live photo and video modes (library only) and
    // force users to select at least the number of items defined.
    @objc public var minNumberOfItems = 1

    /// Set the number of items per row in collection view. Defaults to 4.
    @objc public var numberOfItemsInRow: Int = 4

    /// Set the spacing between items in collection view. Defaults to 1.0.
    @objc public var spacingBetweenItems: CGFloat = 1.0

    /// Allow to skip the selections gallery when selecting the multiple media items. Defaults to false.
    @objc public var skipSelectionsGallery = false
}

/// Encapsulates video specific settings.
@objc public class YPConfigVideo : NSObject {
    
    /// Choose the videoCompression.  Defaults to AVAssetExportPresetHighestQuality
    @objc public var compression: String = AVAssetExportPresetHighestQuality
    
    /// Choose the result video extension if you trim or compress a video. Defaults to mov.
    public var fileType: AVFileType = .mov
    
    /// Defines the time limit for recording videos.
    /// Default is 60 seconds.
    @objc public var recordingTimeLimit: TimeInterval = 60.0
    
    /// Defines the time limit for videos from the library.
    /// Defaults to 60 seconds.
    @objc public var libraryTimeLimit: TimeInterval = 60.0
    
    /// Defines the minimum time for the video
    /// Defaults to 3 seconds.
    @objc public var minimumTimeLimit: TimeInterval = 3.0
    
    /// The maximum duration allowed for the trimming. Change it before setting the asset, as the asset preview
    @objc public var trimmerMaxDuration: Double = 60.0
    
    /// The minimum duration allowed for the trimming.
    /// The handles won't pan further if the minimum duration is attained.
    @objc public var trimmerMinDuration: Double = 3.0
}

public enum YPlibraryMediaType {
    case photo
    case video
    case photoAndVideo
}
