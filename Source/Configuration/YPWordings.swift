//
//  YPWordings.swift
//  YPImagePicker
//
//  Created by Sacha DSO on 12/03/2018.
//  Copyright © 2018 Yummypets. All rights reserved.
//

import Foundation

@objc public class YPWordings : NSObject {
    
    public var permissionPopup = PermissionPopup()
    public var videoDurationPopup = VideoDurationPopup()

    public struct PermissionPopup {
        public var title = ypLocalized("YPImagePickerPermissionDeniedPopupTitle")
        public var message = ypLocalized("YPImagePickerPermissionDeniedPopupMessage")
        public var cancel = ypLocalized("YPImagePickerPermissionDeniedPopupCancel")
        public var grantPermission = ypLocalized("YPImagePickerPermissionDeniedPopupGrantPermission")
    }
    
    public struct VideoDurationPopup {
        public var title = ypLocalized("YPImagePickerVideoDurationTitle")
        public var tooShortMessage = ypLocalized("YPImagePickerVideoTooShort")
        public var tooLongMessage = ypLocalized("YPImagePickerVideoTooLong")
    }
    
    @objc public var ok = ypLocalized("YPImagePickerOk")
    @objc public var done = ypLocalized("YPImagePickerDone")
    @objc public var cancel = ypLocalized("YPImagePickerCancel")
    @objc public var save = ypLocalized("YPImagePickerSave")
    @objc public var processing = ypLocalized("YPImagePickerProcessing")
    @objc public var trim = ypLocalized("YPImagePickerTrim")
    @objc public var cover = ypLocalized("YPImagePickerCover")
    @objc public var albumsTitle = ypLocalized("YPImagePickerAlbums")
    @objc public var libraryTitle = ypLocalized("YPImagePickerLibrary")
    @objc public var cameraTitle = ypLocalized("YPImagePickerPhoto")
    @objc public var videoTitle = ypLocalized("YPImagePickerVideo")
    @objc public var next = ypLocalized("YPImagePickerNext")
    @objc public var filter = ypLocalized("YPImagePickerFilter")
    @objc public var crop = ypLocalized("YPImagePickerCrop")
    @objc public var warningMaxItemsLimit = ypLocalized("YPImagePickerWarningItemsLimit")
}
