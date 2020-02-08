//
//  DistributionsResponse.swift
//  CrowdinSDK
//
//  Created by Serhii Londar on 5/19/19.
//

import Foundation

// MARK: - DistributionsResponse
struct DistributionsResponse: Codable {
    let data: DistributionsResponseData
    
    enum CodingKeys: String, CodingKey {
        case data
    }
    
    init(data: DistributionsResponseData) {
        self.data = data
    }
}

// MARK: - DistributionsResponseData
struct DistributionsResponseData: Codable {
    let project: DistributionsResponseProject
    let user: DistributionsResponseUser
	let wsUrl: String
	
    enum CodingKeys: String, CodingKey {
        case project
        case user
		case wsUrl
    }
    
    init(project: DistributionsResponseProject, user: DistributionsResponseUser, wsUrl: String) {
        self.project = project
        self.user = user
		self.wsUrl = wsUrl
    }
}

// MARK: - DistributionsResponseProject
struct DistributionsResponseProject: Codable {
    let id: String
    let wsHash: String
    
    enum CodingKeys: String, CodingKey {
        case id
        case wsHash
    }
    
    init(id: String, wsHash: String) {
        self.id = id
        self.wsHash = wsHash
    }
}

// MARK: - DistributionsResponseUser
struct DistributionsResponseUser: Codable {
    let id: String
    
    enum CodingKeys: String, CodingKey {
        case id
    }
    
    init(id: String) {
        self.id = id
    }
}
