// Copyright 2018 ProximaX Limited. All rights reserved.
// Use of this source code is governed by the Apache 2.0
// license that can be found in the LICENSE file.
//
// BlockchainScoreDTO.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



class BlockchainScoreDTO: Codable {

    var scoreHigh: UInt64DTO
    var scoreLow: UInt64DTO


    
    init(scoreHigh: UInt64DTO, scoreLow: UInt64DTO) {
        self.scoreHigh = scoreHigh
        self.scoreLow = scoreLow
    }
    

    // Encodable protocol methods

    func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encode(scoreHigh, forKey: "scoreHigh")
        try container.encode(scoreLow, forKey: "scoreLow")
    }

    // Decodable protocol methods

    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        scoreHigh = try container.decode(UInt64DTO.self, forKey: "scoreHigh")
        scoreLow = try container.decode(UInt64DTO.self, forKey: "scoreLow")
    }
}
