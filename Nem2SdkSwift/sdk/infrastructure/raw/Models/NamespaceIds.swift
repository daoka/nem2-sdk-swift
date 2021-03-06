// Copyright 2018 ProximaX Limited. All rights reserved.
// Use of this source code is governed by the Apache 2.0
// license that can be found in the LICENSE file.
//
// NamespaceIds.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



class NamespaceIds: Codable {

    var namespaceIds: [String]?


    
    init(namespaceIds: [String]?) {
        self.namespaceIds = namespaceIds
    }
    

    // Encodable protocol methods

    func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(namespaceIds, forKey: "namespaceIds")
    }

    // Decodable protocol methods

    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        namespaceIds = try container.decodeIfPresent([String].self, forKey: "namespaceIds")
    }
}

