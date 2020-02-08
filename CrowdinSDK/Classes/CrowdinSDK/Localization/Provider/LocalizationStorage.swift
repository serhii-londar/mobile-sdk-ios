//
//  LocalizationStorage.swift
//  CrowdinSDK
//
//  Created by Serhii Londar on 6/3/19.
//

import Foundation

/// Closure with localization data. Contains list of all available languages, strings and plurals localizations.
public typealias LocalizationStorageCompletion = (_ localizations: [String]?, _ strings: [String: String]?, _ plurals: [AnyHashable: Any]?) -> Void

/// Base protocol for all localization store classes.
@objc public protocol LocalizationStorageProtocol {
    /// Current localization.
    var localization: String { get set }
    
    /// Method for data fetching.
    ///
    /// - Parameter completion: Completion block called after localization data fetched.
    func fetchData(completion: @escaping LocalizationStorageCompletion)
}
