// Copyright 2018 ProximaX Limited. All rights reserved.
// Use of this source code is governed by the Apache 2.0
// license that can be found in the LICENSE file.
//
// AccountRoutesAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



class AccountRoutesAPI {
    /**
     Get account information
     
     - parameter accountId: (path) The key or address of the account.
     - parameter completion: completion handler to receive the data and the error objects
     */
    class func getAccountInfo(accountId: String, completion: @escaping ((_ data: AccountInfoDTO?,_ error: Error?) -> Void)) {
        getAccountInfoWithRequestBuilder(accountId: accountId).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get account information
     - GET /account/{accountId}
     - Returns the account information.
     - examples: [{contentType=application/json, example={
  "meta" : { },
  "account" : {
    "publicKeyHeight" : "",
    "address" : "address",
    "importance" : "",
    "mosaics" : [ {
      "amount" : "",
      "id" : ""
    }, {
      "amount" : "",
      "id" : ""
    } ],
    "publicKey" : "publicKey",
    "importanceHeight" : "",
    "addressHeight" : ""
  }
}}]
     
     - parameter accountId: (path) The key or address of the account.

     - returns: RequestBuilder<AccountInfoDTO> 
     */
    class func getAccountInfoWithRequestBuilder(accountId: String) -> RequestBuilder<AccountInfoDTO> {
        var path = "/account/{accountId}"
        path = path.replacingOccurrences(of: "{accountId}", with: "\(accountId)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<AccountInfoDTO>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get multisig account information
     
     - parameter accountId: (path) The key or address of the account.
     - parameter completion: completion handler to receive the data and the error objects
     */
    class func getAccountMultisig(accountId: String, completion: @escaping ((_ data: MultisigAccountInfoDTO?,_ error: Error?) -> Void)) {
        getAccountMultisigWithRequestBuilder(accountId: accountId).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get multisig account information
     - GET /account/{accountId}/multisig
     - Returns [multisig account](https://nemtech.github.io/concepts/multisig-account.html) information.
     - examples: [{contentType=application/json, example={
  "multisig" : {
    "cosignatories" : [ "cosignatories", "cosignatories" ],
    "multisigAccounts" : [ "multisigAccounts", "multisigAccounts" ],
    "minApproval" : 0,
    "accountAddress" : "accountAddress",
    "account" : "account",
    "minRemoval" : 6
  }
}}]
     
     - parameter accountId: (path) The key or address of the account.

     - returns: RequestBuilder<MultisigAccountInfoDTO> 
     */
    class func getAccountMultisigWithRequestBuilder(accountId: String) -> RequestBuilder<MultisigAccountInfoDTO> {
        var path = "/account/{accountId}/multisig"
        path = path.replacingOccurrences(of: "{accountId}", with: "\(accountId)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<MultisigAccountInfoDTO>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get multisig account graph information
     
     - parameter accountId: (path) The key or address of the account.
     - parameter completion: completion handler to receive the data and the error objects
     */
    class func getAccountMultisigGraph(accountId: String, completion: @escaping ((_ data: [MultisigAccountGraphInfoDTO]?,_ error: Error?) -> Void)) {
        getAccountMultisigGraphWithRequestBuilder(accountId: accountId).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get multisig account graph information
     - GET /account/{accountId}/multisig/graph
     - Returns [multisig account](https://nemtech.github.io/concepts/multisig-account.html) graph.
     - examples: [{contentType=application/json, example=[ {
  "level" : 0,
  "multisigEntries" : [ {
    "multisig" : {
      "cosignatories" : [ "cosignatories", "cosignatories" ],
      "multisigAccounts" : [ "multisigAccounts", "multisigAccounts" ],
      "minApproval" : 0,
      "accountAddress" : "accountAddress",
      "account" : "account",
      "minRemoval" : 6
    }
  }, {
    "multisig" : {
      "cosignatories" : [ "cosignatories", "cosignatories" ],
      "multisigAccounts" : [ "multisigAccounts", "multisigAccounts" ],
      "minApproval" : 0,
      "accountAddress" : "accountAddress",
      "account" : "account",
      "minRemoval" : 6
    }
  } ]
}, {
  "level" : 0,
  "multisigEntries" : [ {
    "multisig" : {
      "cosignatories" : [ "cosignatories", "cosignatories" ],
      "multisigAccounts" : [ "multisigAccounts", "multisigAccounts" ],
      "minApproval" : 0,
      "accountAddress" : "accountAddress",
      "account" : "account",
      "minRemoval" : 6
    }
  }, {
    "multisig" : {
      "cosignatories" : [ "cosignatories", "cosignatories" ],
      "multisigAccounts" : [ "multisigAccounts", "multisigAccounts" ],
      "minApproval" : 0,
      "accountAddress" : "accountAddress",
      "account" : "account",
      "minRemoval" : 6
    }
  } ]
} ]}]
     
     - parameter accountId: (path) The key or address of the account.

     - returns: RequestBuilder<[MultisigAccountGraphInfoDTO]> 
     */
    class func getAccountMultisigGraphWithRequestBuilder(accountId: String) -> RequestBuilder<[MultisigAccountGraphInfoDTO]> {
        var path = "/account/{accountId}/multisig/graph"
        path = path.replacingOccurrences(of: "{accountId}", with: "\(accountId)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<[MultisigAccountGraphInfoDTO]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get accounts information
     
     - parameter addresses: (body) An array of addresses. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    class func getAccountsInfo(addresses: Addresses, completion: @escaping ((_ data: [AccountInfoDTO]?,_ error: Error?) -> Void)) {
        getAccountsInfoWithRequestBuilder(addresses: addresses).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get accounts information
     - POST /account
     - Returns the account information for an array of accounts.
     - examples: [{contentType=application/json, example=[ {
  "meta" : { },
  "account" : {
    "publicKeyHeight" : "",
    "address" : "address",
    "importance" : "",
    "mosaics" : [ {
      "amount" : "",
      "id" : ""
    }, {
      "amount" : "",
      "id" : ""
    } ],
    "publicKey" : "publicKey",
    "importanceHeight" : "",
    "addressHeight" : ""
  }
}, {
  "meta" : { },
  "account" : {
    "publicKeyHeight" : "",
    "address" : "address",
    "importance" : "",
    "mosaics" : [ {
      "amount" : "",
      "id" : ""
    }, {
      "amount" : "",
      "id" : ""
    } ],
    "publicKey" : "publicKey",
    "importanceHeight" : "",
    "addressHeight" : ""
  }
} ]}]
     
     - parameter addresses: (body) An array of addresses. 

     - returns: RequestBuilder<[AccountInfoDTO]> 
     */
    class func getAccountsInfoWithRequestBuilder(addresses: Addresses) -> RequestBuilder<[AccountInfoDTO]> {
        let path = "/account"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: addresses)

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<[AccountInfoDTO]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Get incoming transactions
     
     - parameter publicKey: (path) The key of the account.
     - parameter pageSize: (query) The number of transactions to return for each request. The default value is 10, the minimum is 10 and the maximum is 100. (optional)
     - parameter id: (query) The identifier of the transaction after which we want the transactions to be returned. If not supplied the most recent transactions are returned. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    class func incomingTransactions(publicKey: String, pageSize: Int? = nil, id: String? = nil, completion: @escaping ((_ data: [AnyObjectDictionary]?,_ error: Error?) -> Void)) {
        incomingTransactionsWithRequestBuilder(publicKey: publicKey, pageSize: pageSize, id: id).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get incoming transactions
     - GET /account/{publicKey}/transactions/incoming
     - Gets an array of incoming transactions. A transaction is said to be incoming with respect to an account if the account is the recipient of the transaction.
     - examples: [{contentType=application/json, example=[ "{}", "{}" ]}]
     
     - parameter publicKey: (path) The key of the account.
     - parameter pageSize: (query) The number of transactions to return for each request. The default value is 10, the minimum is 10 and the maximum is 100. (optional)
     - parameter id: (query) The identifier of the transaction after which we want the transactions to be returned. If not supplied the most recent transactions are returned. (optional)

     - returns: RequestBuilder<[Any]> 
     */
    class func incomingTransactionsWithRequestBuilder(publicKey: String, pageSize: Int? = nil, id: String? = nil) -> RequestBuilder<[AnyObjectDictionary]> {
        var path = "/account/{publicKey}/transactions/incoming"
        path = path.replacingOccurrences(of: "{publicKey}", with: "\(publicKey)", options: .literal, range: nil)
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
     Get outgoing transactions
     
     - parameter publicKey: (path) The key of the account.
     - parameter pageSize: (query) The number of transactions to return for each request. The default value is 10, the minimum is 10 and the maximum is 100. (optional)
     - parameter id: (query) The identifier of the transaction after which we want the transactions to be returned. If not supplied the most recent transactions are returned. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    class func outgoingTransactions(publicKey: String, pageSize: Int? = nil, id: String? = nil, completion: @escaping ((_ data: [AnyObjectDictionary]?,_ error: Error?) -> Void)) {
        outgoingTransactionsWithRequestBuilder(publicKey: publicKey, pageSize: pageSize, id: id).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get outgoing transactions
     - GET /account/{publicKey}/transactions/outgoing
     - Gets an array of outgoing transactions. A transaction is said to be outgoing with respect to an account if the account is the sender of the transaction.
     - examples: [{contentType=application/json, example=[ "{}", "{}" ]}]
     
     - parameter publicKey: (path) The key of the account.
     - parameter pageSize: (query) The number of transactions to return for each request. The default value is 10, the minimum is 10 and the maximum is 100. (optional)
     - parameter id: (query) The identifier of the transaction after which we want the transactions to be returned. If not supplied the most recent transactions are returned. (optional)

     - returns: RequestBuilder<[Any]> 
     */
    class func outgoingTransactionsWithRequestBuilder(publicKey: String, pageSize: Int? = nil, id: String? = nil) -> RequestBuilder<[AnyObjectDictionary]> {
        var path = "/account/{publicKey}/transactions/outgoing"
        path = path.replacingOccurrences(of: "{publicKey}", with: "\(publicKey)", options: .literal, range: nil)
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
     Get aggregate bonded transactions information
     
     - parameter publicKey: (path) The key of the account.
     - parameter pageSize: (query) The number of transactions to return for each request. The default value is 10, the minimum is 10 and the maximum is 100. (optional)
     - parameter id: (query) The identifier of the transaction after which we want the transactions to be returned. If not supplied the most recent transactions are returned. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    class func partialTransactions(publicKey: String, pageSize: Int? = nil, id: String? = nil, completion: @escaping ((_ data: [AnyObjectDictionary]?,_ error: Error?) -> Void)) {
        partialTransactionsWithRequestBuilder(publicKey: publicKey, pageSize: pageSize, id: id).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get aggregate bonded transactions information
     - GET /account/{publicKey}/transactions/partial
     - Gets an array of [aggregate bonded transactions](https://nemtech.github.io/concepts/aggregate-transaction.html#aggregate-bonded) where the account is the sender or requires to cosign the transaction.
     - examples: [{contentType=application/json, example=[ "{}", "{}" ]}]
     
     - parameter publicKey: (path) The key of the account.
     - parameter pageSize: (query) The number of transactions to return for each request. The default value is 10, the minimum is 10 and the maximum is 100. (optional)
     - parameter id: (query) The identifier of the transaction after which we want the transactions to be returned. If not supplied the most recent transactions are returned. (optional)

     - returns: RequestBuilder<[Any]> 
     */
    class func partialTransactionsWithRequestBuilder(publicKey: String, pageSize: Int? = nil, id: String? = nil) -> RequestBuilder<[AnyObjectDictionary]> {
        var path = "/account/{publicKey}/transactions/partial"
        path = path.replacingOccurrences(of: "{publicKey}", with: "\(publicKey)", options: .literal, range: nil)
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
     Get confirmed transactions
     
     - parameter publicKey: (path) The key of the account.
     - parameter pageSize: (query) The number of transactions to return for each request. The default value is 10, the minimum is 10 and the maximum is 100. (optional)
     - parameter id: (query) The identifier of the transaction after which we want the transactions to be returned. If not supplied the most recent transactions are returned. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    class func transactions(publicKey: String, pageSize: Int? = nil, id: String? = nil, completion: @escaping ((_ data: [AnyObjectDictionary]?,_ error: Error?) -> Void)) {
        transactionsWithRequestBuilder(publicKey: publicKey, pageSize: pageSize, id: id).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get confirmed transactions
     - GET /account/{publicKey}/transactions
     - Gets an array of transactions for which an account is the sender or receiver.
     - examples: [{contentType=application/json, example=[ "{}", "{}" ]}]
     
     - parameter publicKey: (path) The key of the account.
     - parameter pageSize: (query) The number of transactions to return for each request. The default value is 10, the minimum is 10 and the maximum is 100. (optional)
     - parameter id: (query) The identifier of the transaction after which we want the transactions to be returned. If not supplied the most recent transactions are returned. (optional)

     - returns: RequestBuilder<[Any]> 
     */
    class func transactionsWithRequestBuilder(publicKey: String, pageSize: Int? = nil, id: String? = nil) -> RequestBuilder<[AnyObjectDictionary]> {
        var path = "/account/{publicKey}/transactions"
        path = path.replacingOccurrences(of: "{publicKey}", with: "\(publicKey)", options: .literal, range: nil)
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
     Get unconfirmed transactions
     
     - parameter publicKey: (path) The key of the account.
     - parameter pageSize: (query) The number of transactions to return for each request. The default value is 10, the minimum is 10 and the maximum is 100. (optional)
     - parameter id: (query) The identifier of the transaction after which we want the transactions to be returned. If not supplied the most recent transactions are returned. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    class func unconfirmedTransactions(publicKey: String, pageSize: Int? = nil, id: String? = nil, completion: @escaping ((_ data: [AnyObjectDictionary]?,_ error: Error?) -> Void)) {
        unconfirmedTransactionsWithRequestBuilder(publicKey: publicKey, pageSize: pageSize, id: id).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get unconfirmed transactions
     - GET /account/{publicKey}/transactions/unconfirmed
     - Gets the array of transactions for which an account is the sender or receiver and which have not yet been included in a block.
     - examples: [{contentType=application/json, example=[ "{}", "{}" ]}]
     
     - parameter publicKey: (path) The key of the account.
     - parameter pageSize: (query) The number of transactions to return for each request. The default value is 10, the minimum is 10 and the maximum is 100. (optional)
     - parameter id: (query) The identifier of the transaction after which we want the transactions to be returned. If not supplied the most recent transactions are returned. (optional)

     - returns: RequestBuilder<[Any]> 
     */
    class func unconfirmedTransactionsWithRequestBuilder(publicKey: String, pageSize: Int? = nil, id: String? = nil) -> RequestBuilder<[AnyObjectDictionary]> {
        var path = "/account/{publicKey}/transactions/unconfirmed"
        path = path.replacingOccurrences(of: "{publicKey}", with: "\(publicKey)", options: .literal, range: nil)
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

}
