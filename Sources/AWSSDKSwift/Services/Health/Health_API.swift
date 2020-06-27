//===----------------------------------------------------------------------===//
//
// This source file is part of the AWSSDKSwift open source project
//
// Copyright (c) 2017-2020 the AWSSDKSwift project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of AWSSDKSwift project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

@_exported import AWSSDKSwiftCore
import NIO

/**
Client object for interacting with AWS Health service.

AWS Health The AWS Health API provides programmatic access to the AWS Health information that is presented in the AWS Personal Health Dashboard. You can get information about events that affect your AWS resources:    DescribeEvents: Summary information about events.    DescribeEventDetails: Detailed information about one or more events.    DescribeAffectedEntities: Information about AWS resources that are affected by one or more events.   In addition, these operations provide information about event types and summary counts of events or affected entities:    DescribeEventTypes: Information about the kinds of events that AWS Health tracks.    DescribeEventAggregates: A count of the number of events that meet specified criteria.    DescribeEntityAggregates: A count of the number of affected entities that meet specified criteria.   AWS Health integrates with AWS Organizations to provide a centralized view of AWS Health events across all accounts in your organization.    DescribeEventsForOrganization: Summary information about events across the organization.    DescribeAffectedAccountsForOrganization: List of accounts in your organization impacted by an event.    DescribeEventDetailsForOrganization: Detailed information about events in your organization.    DescribeAffectedEntitiesForOrganization: Information about AWS resources in your organization that are affected by events.   You can use the following operations to enable or disable AWS Health from working with AWS Organizations.    EnableHealthServiceAccessForOrganization: Enables AWS Health to work with AWS Organizations.    DisableHealthServiceAccessForOrganization: Disables AWS Health from working with AWS Organizations.    DescribeHealthServiceStatusForOrganization: Status information about enabling or disabling AWS Health from working with AWS Organizations.   The Health API requires a Business or Enterprise support plan from AWS Support. Calling the Health API from an account that does not have a Business or Enterprise support plan causes a SubscriptionRequiredException. For authentication of requests, AWS Health uses the Signature Version 4 Signing Process. See the AWS Health User Guide for information about how to use the API.  Service Endpoint  The HTTP endpoint for the AWS Health API is:   https://health.us-east-1.amazonaws.com   
*/
public struct Health {

    //MARK: Member variables

    public let client: AWSClient
    public let serviceConfig: ServiceConfig

    //MARK: Initialization

    /// Initialize the Health client
    /// - parameters:
    ///     - credentialProvider: Object providing credential to sign requests
    ///     - region: Region of server you want to communicate with. This will override the partition parameter.
    ///     - partition: AWS partition where service resides, standard (.aws), china (.awscn), government (.awsusgov).
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - retryPolicy: Object returning whether retries should be attempted. Possible options are NoRetry(), ExponentialRetry() or JitterRetry()
    ///     - middlewares: Array of middlewares to apply to requests and responses
    ///     - httpClientProvider: HTTPClient to use. Use `createNew` if the client should manage its own HTTPClient.
    public init(
        credentialProvider: CredentialProviderFactory? = nil,
        region: AWSSDKSwiftCore.Region? = nil,
        partition: AWSSDKSwiftCore.Partition = .aws,
        endpoint: String? = nil,
        retryPolicy: RetryPolicy = JitterRetry(),
        middlewares: [AWSServiceMiddleware] = [],
        httpClientProvider: AWSClient.HTTPClientProvider = .createNew
    ) {
        self.serviceConfig = ServiceConfig(
            region: region,
            partition: region?.partition ?? partition,
            amzTarget: "AWSHealth_20160804",
            service: "health",
            serviceProtocol: .json(version: "1.1"),
            apiVersion: "2016-08-04",
            endpoint: endpoint,
            possibleErrorTypes: [HealthErrorType.self]
        )
        self.client = AWSClient(
            credentialProviderFactory: credentialProvider ?? .runtime,
            serviceConfig: serviceConfig,
            retryPolicy: retryPolicy,
            middlewares: middlewares,
            httpClientProvider: httpClientProvider
        )
    }
    
    public func syncShutdown() throws {
        try client.syncShutdown()
    }
    
    //MARK: API Calls

    ///  Returns a list of accounts in the organization from AWS Organizations that are affected by the provided event. Before you can call this operation, you must first enable AWS Health to work with AWS Organizations. To do this, call the EnableHealthServiceAccessForOrganization operation from your organization's master account.
    public func describeAffectedAccountsForOrganization(_ input: DescribeAffectedAccountsForOrganizationRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAffectedAccountsForOrganizationResponse> {
        return client.send(operation: "DescribeAffectedAccountsForOrganization", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Returns a list of entities that have been affected by the specified events, based on the specified filter criteria. Entities can refer to individual customer resources, groups of customer resources, or any other construct, depending on the AWS service. Events that have impact beyond that of the affected entities, or where the extent of impact is unknown, include at least one entity indicating this. At least one event ARN is required. Results are sorted by the lastUpdatedTime of the entity, starting with the most recent.
    public func describeAffectedEntities(_ input: DescribeAffectedEntitiesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAffectedEntitiesResponse> {
        return client.send(operation: "DescribeAffectedEntities", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Returns a list of entities that have been affected by one or more events for one or more accounts in your organization in AWS Organizations, based on the filter criteria. Entities can refer to individual customer resources, groups of customer resources, or any other construct, depending on the AWS service. At least one event ARN and account ID are required. Results are sorted by the lastUpdatedTime of the entity, starting with the most recent. Before you can call this operation, you must first enable AWS Health to work with AWS Organizations. To do this, call the EnableHealthServiceAccessForOrganization operation from your organization's master account. 
    public func describeAffectedEntitiesForOrganization(_ input: DescribeAffectedEntitiesForOrganizationRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAffectedEntitiesForOrganizationResponse> {
        return client.send(operation: "DescribeAffectedEntitiesForOrganization", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Returns the number of entities that are affected by each of the specified events. If no events are specified, the counts of all affected entities are returned.
    public func describeEntityAggregates(_ input: DescribeEntityAggregatesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeEntityAggregatesResponse> {
        return client.send(operation: "DescribeEntityAggregates", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Returns the number of events of each event type (issue, scheduled change, and account notification). If no filter is specified, the counts of all events in each category are returned.
    public func describeEventAggregates(_ input: DescribeEventAggregatesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeEventAggregatesResponse> {
        return client.send(operation: "DescribeEventAggregates", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Returns detailed information about one or more specified events. Information includes standard event data (region, service, and so on, as returned by DescribeEvents), a detailed event description, and possible additional metadata that depends upon the nature of the event. Affected entities are not included; to retrieve those, use the DescribeAffectedEntities operation. If a specified event cannot be retrieved, an error message is returned for that event.
    public func describeEventDetails(_ input: DescribeEventDetailsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeEventDetailsResponse> {
        return client.send(operation: "DescribeEventDetails", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Returns detailed information about one or more specified events for one or more accounts in your organization. Information includes standard event data (Region, service, and so on, as returned by DescribeEventsForOrganization, a detailed event description, and possible additional metadata that depends upon the nature of the event. Affected entities are not included; to retrieve those, use the DescribeAffectedEntitiesForOrganization operation. Before you can call this operation, you must first enable AWS Health to work with AWS Organizations. To do this, call the EnableHealthServiceAccessForOrganization operation from your organization's master account.
    public func describeEventDetailsForOrganization(_ input: DescribeEventDetailsForOrganizationRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeEventDetailsForOrganizationResponse> {
        return client.send(operation: "DescribeEventDetailsForOrganization", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Returns the event types that meet the specified filter criteria. If no filter criteria are specified, all event types are returned, in no particular order.
    public func describeEventTypes(_ input: DescribeEventTypesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeEventTypesResponse> {
        return client.send(operation: "DescribeEventTypes", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Returns information about events that meet the specified filter criteria. Events are returned in a summary form and do not include the detailed description, any additional metadata that depends on the event type, or any affected resources. To retrieve that information, use the DescribeEventDetails and DescribeAffectedEntities operations. If no filter criteria are specified, all events are returned. Results are sorted by lastModifiedTime, starting with the most recent.
    public func describeEvents(_ input: DescribeEventsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeEventsResponse> {
        return client.send(operation: "DescribeEvents", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Returns information about events across your organization in AWS Organizations, meeting the specified filter criteria. Events are returned in a summary form and do not include the accounts impacted, detailed description, any additional metadata that depends on the event type, or any affected resources. To retrieve that information, use the DescribeAffectedAccountsForOrganization, DescribeEventDetailsForOrganization, and DescribeAffectedEntitiesForOrganization operations. If no filter criteria are specified, all events across your organization are returned. Results are sorted by lastModifiedTime, starting with the most recent. Before you can call this operation, you must first enable Health to work with AWS Organizations. To do this, call the EnableHealthServiceAccessForOrganization operation from your organization's master account.
    public func describeEventsForOrganization(_ input: DescribeEventsForOrganizationRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeEventsForOrganizationResponse> {
        return client.send(operation: "DescribeEventsForOrganization", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  This operation provides status information on enabling or disabling AWS Health to work with your organization. To call this operation, you must sign in as an IAM user, assume an IAM role, or sign in as the root user (not recommended) in the organization's master account.
    public func describeHealthServiceStatusForOrganization(on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeHealthServiceStatusForOrganizationResponse> {
        return client.send(operation: "DescribeHealthServiceStatusForOrganization", path: "/", httpMethod: "POST", on: eventLoop)
    }

    ///  Calling this operation disables Health from working with AWS Organizations. This does not remove the Service Linked Role (SLR) from the the master account in your organization. Use the IAM console, API, or AWS CLI to remove the SLR if desired. To call this operation, you must sign in as an IAM user, assume an IAM role, or sign in as the root user (not recommended) in the organization's master account.
    @discardableResult public func disableHealthServiceAccessForOrganization(on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "DisableHealthServiceAccessForOrganization", path: "/", httpMethod: "POST", on: eventLoop)
    }

    ///  Calling this operation enables AWS Health to work with AWS Organizations. This applies a Service Linked Role (SLR) to the master account in the organization. To learn more about the steps in this process, visit enabling service access for AWS Health in AWS Organizations. To call this operation, you must sign in as an IAM user, assume an IAM role, or sign in as the root user (not recommended) in the organization's master account.
    @discardableResult public func enableHealthServiceAccessForOrganization(on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "EnableHealthServiceAccessForOrganization", path: "/", httpMethod: "POST", on: eventLoop)
    }
}
