// Copyright 2018 ProximaX Limited. All rights reserved.
// Use of this source code is governed by the Apache 2.0
// license that can be found in the LICENSE file.
//
// NamespaceNameDTO.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



class NamespaceNameDTO: Codable {

    var parentId: UInt64DTO?
    var namespaceId: UInt64DTO
    var name: String


    
    init(parentId: UInt64DTO?, namespaceId: UInt64DTO, name: String) {
        self.parentId = parentId
        self.namespaceId = namespaceId
        self.name = name
    }
    

    // Encodable protocol methods

    func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(parentId, forKey: "parentId")
        try container.encode(namespaceId, forKey: "namespaceId")
        try container.encode(name, forKey: "name")
    }

    // Decodable protocol methods

    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        parentId = try container.decodeIfPresent(UInt64DTO.self, forKey: "parentId")
        namespaceId = try container.decode(UInt64DTO.self, forKey: "namespaceId")
        name = try container.decode(String.self, forKey: "name")
    }
}
