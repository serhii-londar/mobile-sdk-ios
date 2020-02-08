//
//  ManifestResponse.swift
//  CrowdinSDK
//
//  Created by Serhii Londar on 03.11.2019.
//

import Foundation

struct ManifestResponse: Codable {
    let files: [String]

    enum CodingKeys: String, CodingKey {
        case files
    }

    init(files: [String]) {
        self.files = files
    }
}
