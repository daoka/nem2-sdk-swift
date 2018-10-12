// Copyright 2018 ProximaX Limited. All rights reserved.
// Use of this source code is governed by the Apache 2.0
// license that can be found in the LICENSE file.
//
// NamespaceInfoDTO.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



class NamespaceInfoDTO: Codable {

    var meta: NamespaceMosaicMetaDTO
    var namespace: NamespaceDTO


    
    init(meta: NamespaceMosaicMetaDTO, namespace: NamespaceDTO) {
        self.meta = meta
        self.namespace = namespace
    }
    

    // Encodable protocol methods

    func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encode(meta, forKey: "meta")
        try container.encode(namespace, forKey: "namespace")
    }

    // Decodable protocol methods

    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        meta = try container.decode(NamespaceMosaicMetaDTO.self, forKey: "meta")
        namespace = try container.decode(NamespaceDTO.self, forKey: "namespace")
    }
}
