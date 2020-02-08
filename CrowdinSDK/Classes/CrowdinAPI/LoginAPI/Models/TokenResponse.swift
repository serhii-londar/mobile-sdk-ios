//
//  TokenResponse.swift
//  CrowdinSDK
//
//  Created by Serhii Londar on 8/11/19.
//

import Foundation

struct TokenResponse: Codable {
	let tokenType: String
	let expiresIn: Int
	let accessToken: String
	let refreshToken: String
	
	enum CodingKeys: String, CodingKey {
		case tokenType = "token_type"
		case expiresIn = "expires_in"
		case accessToken = "access_token"
		case refreshToken = "refresh_token"
	}
}
