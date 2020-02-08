//
//  RemoteLocalizationStorage.swift
//  CrowdinSDK
//
//  Created by Serhii Londar on 6/3/19.
//

import Foundation

/// Protocol for remote localization storage.
@objc public protocol RemoteLocalizationStorageProtocol: LocalizationStorageProtocol {
    /// Storage name.
    var name: String { get set }
    
    /// Shoud be called to remove all stored files and cache data.
    func deintegrate()
}
