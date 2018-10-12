// Copyright 2018 ProximaX Limited. All rights reserved.
// Use of this source code is governed by the Apache 2.0
// license that can be found in the LICENSE file.
//
// BlockDTO.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



class BlockDTO: Codable {

    var signature: String
    var signer: String
    var version: Double
    var type: Double
    var height: UInt64DTO
    var timestamp: UInt64DTO
    var difficulty: UInt64DTO
    var previousBlockHash: String
    var blockTransactionsHash: String


    
    init(signature: String, signer: String, version: Double, type: Double, height: UInt64DTO, timestamp: UInt64DTO, difficulty: UInt64DTO, previousBlockHash: String, blockTransactionsHash: String) {
        self.signature = signature
        self.signer = signer
        self.version = version
        self.type = type
        self.height = height
        self.timestamp = timestamp
        self.difficulty = difficulty
        self.previousBlockHash = previousBlockHash
        self.blockTransactionsHash = blockTransactionsHash
    }
    

    // Encodable protocol methods

    func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encode(signature, forKey: "signature")
        try container.encode(signer, forKey: "signer")
        try container.encode(version, forKey: "version")
        try container.encode(type, forKey: "type")
        try container.encode(height, forKey: "height")
        try container.encode(timestamp, forKey: "timestamp")
        try container.encode(difficulty, forKey: "difficulty")
        try container.encode(previousBlockHash, forKey: "previousBlockHash")
        try container.encode(blockTransactionsHash, forKey: "blockTransactionsHash")
    }

    // Decodable protocol methods

    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        signature = try container.decode(String.self, forKey: "signature")
        signer = try container.decode(String.self, forKey: "signer")
        version = try container.decode(Double.self, forKey: "version")
        type = try container.decode(Double.self, forKey: "type")
        height = try container.decode(UInt64DTO.self, forKey: "height")
        timestamp = try container.decode(UInt64DTO.self, forKey: "timestamp")
        difficulty = try container.decode(UInt64DTO.self, forKey: "difficulty")
        previousBlockHash = try container.decode(String.self, forKey: "previousBlockHash")
        blockTransactionsHash = try container.decode(String.self, forKey: "blockTransactionsHash")
    }
}

