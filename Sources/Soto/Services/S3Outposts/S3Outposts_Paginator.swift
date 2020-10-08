//===----------------------------------------------------------------------===//
//
// This source file is part of the Soto for AWS open source project
//
// Copyright (c) 2017-2020 the Soto project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Soto project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/soto/blob/main/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import SotoCore

// MARK: Paginators

extension S3Outposts {
    ///  S3 on Outposts access points simplify managing data access at scale for shared datasets in Amazon S3 on Outposts. S3 on Outposts uses endpoints to connect to Outposts buckets so that you can perform actions within your virtual private cloud (VPC).  This action lists endpoints associated with the Outpost.   Related actions include:    CreateEndpoint     DeleteEndpoint
    public func listEndpointsPaginator(
        _ input: ListEndpointsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListEndpointsResult, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listEndpoints,
            tokenKey: \ListEndpointsResult.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }
}

extension S3Outposts.ListEndpointsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> S3Outposts.ListEndpointsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}