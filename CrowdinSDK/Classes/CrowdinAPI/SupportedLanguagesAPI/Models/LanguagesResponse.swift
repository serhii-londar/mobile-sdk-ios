//
//  SupportedLanguagesResponse.swift
//  CrowdinSDK
//
//  Created by Serhii Londar on 3/26/19.
//

import Foundation

// MARK: - LanguagesResponse
struct LanguagesResponse: Codable {
    let data: [LanguagesResponseDatum]
    let pagination: LanguagesResponsePagination

    enum CodingKeys: String, CodingKey {
        case data
        case pagination
    }

    init(data: [LanguagesResponseDatum], pagination: LanguagesResponsePagination) {
        self.data = data
        self.pagination = pagination
    }
}

// MARK: - LanguagesResponseDatum
struct LanguagesResponseDatum: Codable {
    let data: LanguagesResponseData

    enum CodingKeys: String, CodingKey {
        case data
    }

    init(data: LanguagesResponseData) {
        self.data = data
    }
}

// MARK: - LanguagesResponseData
struct LanguagesResponseData: Codable {
    let id: String
    let name: String
    let editorCode: String
    let twoLettersCode: String
    let threeLettersCode: String
    let locale: String
    let androidCode: String
    let osxCode: String
    let osxLocale: String
    let pluralCategoryNames: [LanguagesResponsePluralCategoryName]
    let pluralRules: String
    let pluralExamples: [String]
    let textDirection: LanguagesResponseTextDirection
    let dialectOf: String?

    enum CodingKeys: String, CodingKey {
        case id
        case name
        case editorCode
        case twoLettersCode
        case threeLettersCode
        case locale
        case androidCode
        case osxCode
        case osxLocale
        case pluralCategoryNames
        case pluralRules
        case pluralExamples
        case textDirection
        case dialectOf
    }

    init(id: String, name: String, editorCode: String, twoLettersCode: String, threeLettersCode: String, locale: String, androidCode: String, osxCode: String, osxLocale: String, pluralCategoryNames: [LanguagesResponsePluralCategoryName], pluralRules: String, pluralExamples: [String], textDirection: LanguagesResponseTextDirection, dialectOf: String?) {
        self.id = id
        self.name = name
        self.editorCode = editorCode
        self.twoLettersCode = twoLettersCode
        self.threeLettersCode = threeLettersCode
        self.locale = locale
        self.androidCode = androidCode
        self.osxCode = osxCode
        self.osxLocale = osxLocale
        self.pluralCategoryNames = pluralCategoryNames
        self.pluralRules = pluralRules
        self.pluralExamples = pluralExamples
        self.textDirection = textDirection
        self.dialectOf = dialectOf
    }
}

enum LanguagesResponsePluralCategoryName: String, Codable {
    case few
    case many
    case one
    case other
    case two
    case zero
}

enum LanguagesResponseTextDirection: String, Codable {
    case ltr
    case rtl
}

// MARK: - LanguagesResponsePagination
struct LanguagesResponsePagination: Codable {
    let offset: Int
    let limit: Int

    enum CodingKeys: String, CodingKey {
        case offset
        case limit
    }

    init(offset: Int, limit: Int) {
        self.offset = offset
        self.limit = limit
    }
}
