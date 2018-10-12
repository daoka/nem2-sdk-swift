// Copyright 2018 ProximaX Limited. All rights reserved.
// Use of this source code is governed by the Apache 2.0
// license that can be found in the LICENSE file.
//
// Multisig.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



class Multisig: Codable {

    var account: String
    var accountAddress: String?
    var minApproval: Int
    var minRemoval: Int
    var cosignatories: [String]
    var multisigAccounts: [String]


    
    init(account: String, accountAddress: String?, minApproval: Int, minRemoval: Int, cosignatories: [String], multisigAccounts: [String]) {
        self.account = account
        self.accountAddress = accountAddress
        self.minApproval = minApproval
        self.minRemoval = minRemoval
        self.cosignatories = cosignatories
        self.multisigAccounts = multisigAccounts
    }
    

    // Encodable protocol methods

    func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encode(account, forKey: "account")
        try container.encodeIfPresent(accountAddress, forKey: "accountAddress")
        try container.encode(minApproval, forKey: "minApproval")
        try container.encode(minRemoval, forKey: "minRemoval")
        try container.encode(cosignatories, forKey: "cosignatories")
        try container.encode(multisigAccounts, forKey: "multisigAccounts")
    }

    // Decodable protocol methods

    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        account = try container.decode(String.self, forKey: "account")
        accountAddress = try container.decodeIfPresent(String.self, forKey: "accountAddress")
        minApproval = try container.decode(Int.self, forKey: "minApproval")
        minRemoval = try container.decode(Int.self, forKey: "minRemoval")
        cosignatories = try container.decode([String].self, forKey: "cosignatories")
        multisigAccounts = try container.decode([String].self, forKey: "multisigAccounts")
    }
}

