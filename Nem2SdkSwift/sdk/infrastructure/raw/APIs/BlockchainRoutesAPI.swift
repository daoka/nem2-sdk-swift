// Copyright 2018 ProximaX Limited. All rights reserved.
// Use of this source code is governed by the Apache 2.0
// license that can be found in the LICENSE file.
//
// BlockchainRoutesAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



class BlockchainRoutesAPI {
    /**
     Get block information
     
     - parameter height: (path) The block&#39;s height. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    class func getBlockByHeight(height: Int64, completion: @escaping ((_ data: BlockInfoDTO?,_ error: Error?) -> Void)) {
        getBlockByHeightWithRequestBuilder(height: height).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get block information
     - GET /block/{height}
     - Gets a block from the chain that has the given height.
     - examples: [{contentType=application/json, example={
  "meta" : {
    "totalFee" : "",
    "generationHash" : "generationHash",
    "numTransactions" : 0.80082819046101150206595775671303272247314453125,
    "hash" : "hash"
  },
  "block" : {
    "difficulty" : "",
    "blockTransactionsHash" : "blockTransactionsHash",
    "previousBlockHash" : "previousBlockHash",
    "signature" : "signature",
    "type" : 1.46581298050294517310021547018550336360931396484375,
    "version" : 6.02745618307040320615897144307382404804229736328125,
    "signer" : "signer",
    "height" : "",
    "timestamp" : ""
  }
}}]
     
     - parameter height: (path) The block&#39;s height. 

     - returns: RequestBuilder<BlockInfoDTO> 
     */
    class func getBlockByHeightWithRequestBuilder(height: Int64) -> RequestBuilder<BlockInfoDTO> {
        var path = "/block/{height}"
        path = path.replacingOccurrences(of: "{height}", with: "\(height)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<BlockInfoDTO>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get transactions from a block
     
     - parameter height: (path) The block&#39;s height. 
     - parameter pageSize: (query) The number of transactions to return for each request. The default value is 10, the minimum is 10 and the maximum is 100. (optional)
     - parameter id: (query) The identifier of the transaction after which we want the transactions to be returned. If not supplied the most recent transactions are returned. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    class func getBlockTransactions(height: Int64, pageSize: Int? = nil, id: String? = nil, completion: @escaping ((_ data: [AnyObjectDictionary]?,_ error: Error?) -> Void)) {
        getBlockTransactionsWithRequestBuilder(height: height, pageSize: pageSize, id: id).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get transactions from a block
     - GET /block/{height}/transactions
     - Returns an array of transactions included in a block for a given block height.
     - examples: [{contentType=application/json, example=[ "{}", "{}" ]}]
     
     - parameter height: (path) The block&#39;s height. 
     - parameter pageSize: (query) The number of transactions to return for each request. The default value is 10, the minimum is 10 and the maximum is 100. (optional)
     - parameter id: (query) The identifier of the transaction after which we want the transactions to be returned. If not supplied the most recent transactions are returned. (optional)

     - returns: RequestBuilder<[Any]> 
     */
    class func getBlockTransactionsWithRequestBuilder(height: Int64, pageSize: Int? = nil, id: String? = nil) -> RequestBuilder<[AnyObjectDictionary]> {
        var path = "/block/{height}/transactions"
        path = path.replacingOccurrences(of: "{height}", with: "\(height)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "pageSize": pageSize?.encodeToJSON(), 
            "id": id
        ])
        

        let requestBuilder: RequestBuilder<[AnyObjectDictionary]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get the current height of the chain
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    class func getBlockchainHeight(completion: @escaping ((_ data: HeightDTO?,_ error: Error?) -> Void)) {
        getBlockchainHeightWithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get the current height of the chain
     - GET /chain/height
     - Returns the current height of the block chain.
     - examples: [{contentType=application/json, example={
  "height" : ""
}}]

     - returns: RequestBuilder<HeightDTO> 
     */
    class func getBlockchainHeightWithRequestBuilder() -> RequestBuilder<HeightDTO> {
        let path = "/chain/height"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<HeightDTO>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get the current score of the chain
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    class func getBlockchainScore(completion: @escaping ((_ data: BlockchainScoreDTO?,_ error: Error?) -> Void)) {
        getBlockchainScoreWithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get the current score of the chain
     - GET /chain/score
     - Gets the current score of the block chain. The higher the score, the better the chain. During synchronization, nodes try to get the best block chain in the network.
     - examples: [{contentType=application/json, example={
  "scoreHigh" : "",
  "scoreLow" : ""
}}]

     - returns: RequestBuilder<BlockchainScoreDTO> 
     */
    class func getBlockchainScoreWithRequestBuilder() -> RequestBuilder<BlockchainScoreDTO> {
        let path = "/chain/score"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<BlockchainScoreDTO>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get blocks information
     
     - parameter height: (path) The block&#39;s height. 
     - parameter limit: (path) The number of following blocks to be returned. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    class func getBlocksByHeightWithLimit(height: Int64, limit: Int, completion: @escaping ((_ data: [BlockInfoDTO]?,_ error: Error?) -> Void)) {
        getBlocksByHeightWithLimitWithRequestBuilder(height: height, limit: limit).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get blocks information
     - GET /blocks/{height}/limit/{limit}
     - Gets up to limit number of blocks after given block height from the chain.
     - examples: [{contentType=application/json, example=[ {
  "meta" : {
    "totalFee" : "",
    "generationHash" : "generationHash",
    "numTransactions" : 0.80082819046101150206595775671303272247314453125,
    "hash" : "hash"
  },
  "block" : {
    "difficulty" : "",
    "blockTransactionsHash" : "blockTransactionsHash",
    "previousBlockHash" : "previousBlockHash",
    "signature" : "signature",
    "type" : 1.46581298050294517310021547018550336360931396484375,
    "version" : 6.02745618307040320615897144307382404804229736328125,
    "signer" : "signer",
    "height" : "",
    "timestamp" : ""
  }
}, {
  "meta" : {
    "totalFee" : "",
    "generationHash" : "generationHash",
    "numTransactions" : 0.80082819046101150206595775671303272247314453125,
    "hash" : "hash"
  },
  "block" : {
    "difficulty" : "",
    "blockTransactionsHash" : "blockTransactionsHash",
    "previousBlockHash" : "previousBlockHash",
    "signature" : "signature",
    "type" : 1.46581298050294517310021547018550336360931396484375,
    "version" : 6.02745618307040320615897144307382404804229736328125,
    "signer" : "signer",
    "height" : "",
    "timestamp" : ""
  }
} ]}]
     
     - parameter height: (path) The block&#39;s height. 
     - parameter limit: (path) The number of following blocks to be returned. 

     - returns: RequestBuilder<[BlockInfoDTO]> 
     */
    class func getBlocksByHeightWithLimitWithRequestBuilder(height: Int64, limit: Int) -> RequestBuilder<[BlockInfoDTO]> {
        var path = "/blocks/{height}/limit/{limit}"
        path = path.replacingOccurrences(of: "{height}", with: "\(height)", options: .literal, range: nil)
        path = path.replacingOccurrences(of: "{limit}", with: "\(limit)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<[BlockInfoDTO]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get the storage information
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    class func getDiagnosticStorage(completion: @escaping ((_ data: BlockchainStorageInfoDTO?,_ error: Error?) -> Void)) {
        getDiagnosticStorageWithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get the storage information
     - GET /diagnostic/storage
     - Returns statistical information about the blockchain.
     - examples: [{contentType=application/json, example={
  "numBlocks" : 0,
  "numTransactions" : 6,
  "numAccounts" : 1
}}]

     - returns: RequestBuilder<BlockchainStorageInfoDTO> 
     */
    class func getDiagnosticStorageWithRequestBuilder() -> RequestBuilder<BlockchainStorageInfoDTO> {
        let path = "/diagnostic/storage"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<BlockchainStorageInfoDTO>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
