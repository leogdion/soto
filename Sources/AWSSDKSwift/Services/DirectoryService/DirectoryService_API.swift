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
Client object for interacting with AWS DirectoryService service.

AWS Directory Service AWS Directory Service is a web service that makes it easy for you to setup and run directories in the AWS cloud, or connect your AWS resources with an existing on-premises Microsoft Active Directory. This guide provides detailed information about AWS Directory Service operations, data types, parameters, and errors. For information about AWS Directory Services features, see AWS Directory Service and the AWS Directory Service Administration Guide.  AWS provides SDKs that consist of libraries and sample code for various programming languages and platforms (Java, Ruby, .Net, iOS, Android, etc.). The SDKs provide a convenient way to create programmatic access to AWS Directory Service and other AWS services. For more information about the AWS SDKs, including how to download and install them, see Tools for Amazon Web Services. 
*/
public struct DirectoryService {

    //MARK: Member variables

    public let client: AWSClient
    public let serviceConfig: ServiceConfig

    //MARK: Initialization

    /// Initialize the DirectoryService client
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
            amzTarget: "DirectoryService_20150416",
            service: "ds",
            serviceProtocol: .json(version: "1.1"),
            apiVersion: "2015-04-16",
            endpoint: endpoint,
            possibleErrorTypes: [DirectoryServiceErrorType.self]
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

    ///  Accepts a directory sharing request that was sent from the directory owner account.
    public func acceptSharedDirectory(_ input: AcceptSharedDirectoryRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AcceptSharedDirectoryResult> {
        return client.send(operation: "AcceptSharedDirectory", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  If the DNS server for your on-premises domain uses a publicly addressable IP address, you must add a CIDR address block to correctly route traffic to and from your Microsoft AD on Amazon Web Services. AddIpRoutes adds this address block. You can also use AddIpRoutes to facilitate routing traffic that uses public IP ranges from your Microsoft AD on AWS to a peer VPC.  Before you call AddIpRoutes, ensure that all of the required permissions have been explicitly granted through a policy. For details about what permissions are required to run the AddIpRoutes operation, see AWS Directory Service API Permissions: Actions, Resources, and Conditions Reference.
    public func addIpRoutes(_ input: AddIpRoutesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AddIpRoutesResult> {
        return client.send(operation: "AddIpRoutes", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Adds or overwrites one or more tags for the specified directory. Each directory can have a maximum of 50 tags. Each tag consists of a key and optional value. Tag keys must be unique to each resource.
    public func addTagsToResource(_ input: AddTagsToResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AddTagsToResourceResult> {
        return client.send(operation: "AddTagsToResource", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Cancels an in-progress schema extension to a Microsoft AD directory. Once a schema extension has started replicating to all domain controllers, the task can no longer be canceled. A schema extension can be canceled during any of the following states; Initializing, CreatingSnapshot, and UpdatingSchema.
    public func cancelSchemaExtension(_ input: CancelSchemaExtensionRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CancelSchemaExtensionResult> {
        return client.send(operation: "CancelSchemaExtension", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates an AD Connector to connect to an on-premises directory. Before you call ConnectDirectory, ensure that all of the required permissions have been explicitly granted through a policy. For details about what permissions are required to run the ConnectDirectory operation, see AWS Directory Service API Permissions: Actions, Resources, and Conditions Reference.
    public func connectDirectory(_ input: ConnectDirectoryRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ConnectDirectoryResult> {
        return client.send(operation: "ConnectDirectory", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates an alias for a directory and assigns the alias to the directory. The alias is used to construct the access URL for the directory, such as http://&lt;alias&gt;.awsapps.com.  After an alias has been created, it cannot be deleted or reused, so this operation should only be used when absolutely necessary. 
    public func createAlias(_ input: CreateAliasRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateAliasResult> {
        return client.send(operation: "CreateAlias", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates a computer account in the specified directory, and joins the computer to the directory.
    public func createComputer(_ input: CreateComputerRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateComputerResult> {
        return client.send(operation: "CreateComputer", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates a conditional forwarder associated with your AWS directory. Conditional forwarders are required in order to set up a trust relationship with another domain. The conditional forwarder points to the trusted domain.
    public func createConditionalForwarder(_ input: CreateConditionalForwarderRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateConditionalForwarderResult> {
        return client.send(operation: "CreateConditionalForwarder", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates a Simple AD directory. For more information, see Simple Active Directory in the AWS Directory Service Admin Guide. Before you call CreateDirectory, ensure that all of the required permissions have been explicitly granted through a policy. For details about what permissions are required to run the CreateDirectory operation, see AWS Directory Service API Permissions: Actions, Resources, and Conditions Reference.
    public func createDirectory(_ input: CreateDirectoryRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDirectoryResult> {
        return client.send(operation: "CreateDirectory", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates a subscription to forward real-time Directory Service domain controller security logs to the specified Amazon CloudWatch log group in your AWS account.
    public func createLogSubscription(_ input: CreateLogSubscriptionRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateLogSubscriptionResult> {
        return client.send(operation: "CreateLogSubscription", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates a Microsoft AD directory in the AWS Cloud. For more information, see AWS Managed Microsoft AD in the AWS Directory Service Admin Guide. Before you call CreateMicrosoftAD, ensure that all of the required permissions have been explicitly granted through a policy. For details about what permissions are required to run the CreateMicrosoftAD operation, see AWS Directory Service API Permissions: Actions, Resources, and Conditions Reference.
    public func createMicrosoftAD(_ input: CreateMicrosoftADRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateMicrosoftADResult> {
        return client.send(operation: "CreateMicrosoftAD", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates a snapshot of a Simple AD or Microsoft AD directory in the AWS cloud.  You cannot take snapshots of AD Connector directories. 
    public func createSnapshot(_ input: CreateSnapshotRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateSnapshotResult> {
        return client.send(operation: "CreateSnapshot", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  AWS Directory Service for Microsoft Active Directory allows you to configure trust relationships. For example, you can establish a trust between your AWS Managed Microsoft AD directory, and your existing on-premises Microsoft Active Directory. This would allow you to provide users and groups access to resources in either domain, with a single set of credentials. This action initiates the creation of the AWS side of a trust relationship between an AWS Managed Microsoft AD directory and an external domain. You can create either a forest trust or an external trust.
    public func createTrust(_ input: CreateTrustRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateTrustResult> {
        return client.send(operation: "CreateTrust", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes a conditional forwarder that has been set up for your AWS directory.
    public func deleteConditionalForwarder(_ input: DeleteConditionalForwarderRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteConditionalForwarderResult> {
        return client.send(operation: "DeleteConditionalForwarder", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes an AWS Directory Service directory. Before you call DeleteDirectory, ensure that all of the required permissions have been explicitly granted through a policy. For details about what permissions are required to run the DeleteDirectory operation, see AWS Directory Service API Permissions: Actions, Resources, and Conditions Reference.
    public func deleteDirectory(_ input: DeleteDirectoryRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteDirectoryResult> {
        return client.send(operation: "DeleteDirectory", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes the specified log subscription.
    public func deleteLogSubscription(_ input: DeleteLogSubscriptionRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteLogSubscriptionResult> {
        return client.send(operation: "DeleteLogSubscription", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes a directory snapshot.
    public func deleteSnapshot(_ input: DeleteSnapshotRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteSnapshotResult> {
        return client.send(operation: "DeleteSnapshot", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes an existing trust relationship between your AWS Managed Microsoft AD directory and an external domain.
    public func deleteTrust(_ input: DeleteTrustRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteTrustResult> {
        return client.send(operation: "DeleteTrust", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes from the system the certificate that was registered for a secured LDAP connection.
    public func deregisterCertificate(_ input: DeregisterCertificateRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeregisterCertificateResult> {
        return client.send(operation: "DeregisterCertificate", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Removes the specified directory as a publisher to the specified SNS topic.
    public func deregisterEventTopic(_ input: DeregisterEventTopicRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeregisterEventTopicResult> {
        return client.send(operation: "DeregisterEventTopic", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Displays information about the certificate registered for a secured LDAP connection.
    public func describeCertificate(_ input: DescribeCertificateRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCertificateResult> {
        return client.send(operation: "DescribeCertificate", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Obtains information about the conditional forwarders for this account. If no input parameters are provided for RemoteDomainNames, this request describes all conditional forwarders for the specified directory ID.
    public func describeConditionalForwarders(_ input: DescribeConditionalForwardersRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeConditionalForwardersResult> {
        return client.send(operation: "DescribeConditionalForwarders", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Obtains information about the directories that belong to this account. You can retrieve information about specific directories by passing the directory identifiers in the DirectoryIds parameter. Otherwise, all directories that belong to the current account are returned. This operation supports pagination with the use of the NextToken request and response parameters. If more results are available, the DescribeDirectoriesResult.NextToken member contains a token that you pass in the next call to DescribeDirectories to retrieve the next set of items. You can also specify a maximum number of return results with the Limit parameter.
    public func describeDirectories(_ input: DescribeDirectoriesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDirectoriesResult> {
        return client.send(operation: "DescribeDirectories", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Provides information about any domain controllers in your directory.
    public func describeDomainControllers(_ input: DescribeDomainControllersRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDomainControllersResult> {
        return client.send(operation: "DescribeDomainControllers", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Obtains information about which SNS topics receive status messages from the specified directory. If no input parameters are provided, such as DirectoryId or TopicName, this request describes all of the associations in the account.
    public func describeEventTopics(_ input: DescribeEventTopicsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeEventTopicsResult> {
        return client.send(operation: "DescribeEventTopics", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Describes the status of LDAP security for the specified directory.
    public func describeLDAPSSettings(_ input: DescribeLDAPSSettingsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLDAPSSettingsResult> {
        return client.send(operation: "DescribeLDAPSSettings", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Returns the shared directories in your account. 
    public func describeSharedDirectories(_ input: DescribeSharedDirectoriesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSharedDirectoriesResult> {
        return client.send(operation: "DescribeSharedDirectories", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Obtains information about the directory snapshots that belong to this account. This operation supports pagination with the use of the NextToken request and response parameters. If more results are available, the DescribeSnapshots.NextToken member contains a token that you pass in the next call to DescribeSnapshots to retrieve the next set of items. You can also specify a maximum number of return results with the Limit parameter.
    public func describeSnapshots(_ input: DescribeSnapshotsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSnapshotsResult> {
        return client.send(operation: "DescribeSnapshots", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Obtains information about the trust relationships for this account. If no input parameters are provided, such as DirectoryId or TrustIds, this request describes all the trust relationships belonging to the account.
    public func describeTrusts(_ input: DescribeTrustsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTrustsResult> {
        return client.send(operation: "DescribeTrusts", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deactivates LDAP secure calls for the specified directory.
    public func disableLDAPS(_ input: DisableLDAPSRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisableLDAPSResult> {
        return client.send(operation: "DisableLDAPS", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Disables multi-factor authentication (MFA) with the Remote Authentication Dial In User Service (RADIUS) server for an AD Connector or Microsoft AD directory.
    public func disableRadius(_ input: DisableRadiusRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisableRadiusResult> {
        return client.send(operation: "DisableRadius", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Disables single-sign on for a directory.
    public func disableSso(_ input: DisableSsoRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisableSsoResult> {
        return client.send(operation: "DisableSso", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Activates the switch for the specific directory to always use LDAP secure calls.
    public func enableLDAPS(_ input: EnableLDAPSRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<EnableLDAPSResult> {
        return client.send(operation: "EnableLDAPS", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Enables multi-factor authentication (MFA) with the Remote Authentication Dial In User Service (RADIUS) server for an AD Connector or Microsoft AD directory.
    public func enableRadius(_ input: EnableRadiusRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<EnableRadiusResult> {
        return client.send(operation: "EnableRadius", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Enables single sign-on for a directory. Single sign-on allows users in your directory to access certain AWS services from a computer joined to the directory without having to enter their credentials separately.
    public func enableSso(_ input: EnableSsoRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<EnableSsoResult> {
        return client.send(operation: "EnableSso", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Obtains directory limit information for the current Region.
    public func getDirectoryLimits(_ input: GetDirectoryLimitsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetDirectoryLimitsResult> {
        return client.send(operation: "GetDirectoryLimits", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Obtains the manual snapshot limits for a directory.
    public func getSnapshotLimits(_ input: GetSnapshotLimitsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetSnapshotLimitsResult> {
        return client.send(operation: "GetSnapshotLimits", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  For the specified directory, lists all the certificates registered for a secured LDAP connection.
    public func listCertificates(_ input: ListCertificatesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListCertificatesResult> {
        return client.send(operation: "ListCertificates", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Lists the address blocks that you have added to a directory.
    public func listIpRoutes(_ input: ListIpRoutesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListIpRoutesResult> {
        return client.send(operation: "ListIpRoutes", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Lists the active log subscriptions for the AWS account.
    public func listLogSubscriptions(_ input: ListLogSubscriptionsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListLogSubscriptionsResult> {
        return client.send(operation: "ListLogSubscriptions", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Lists all schema extensions applied to a Microsoft AD Directory.
    public func listSchemaExtensions(_ input: ListSchemaExtensionsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListSchemaExtensionsResult> {
        return client.send(operation: "ListSchemaExtensions", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Lists all tags on a directory.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTagsForResourceResult> {
        return client.send(operation: "ListTagsForResource", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Registers a certificate for secured LDAP connection.
    public func registerCertificate(_ input: RegisterCertificateRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RegisterCertificateResult> {
        return client.send(operation: "RegisterCertificate", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Associates a directory with an SNS topic. This establishes the directory as a publisher to the specified SNS topic. You can then receive email or text (SMS) messages when the status of your directory changes. You get notified if your directory goes from an Active status to an Impaired or Inoperable status. You also receive a notification when the directory returns to an Active status.
    public func registerEventTopic(_ input: RegisterEventTopicRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RegisterEventTopicResult> {
        return client.send(operation: "RegisterEventTopic", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Rejects a directory sharing request that was sent from the directory owner account.
    public func rejectSharedDirectory(_ input: RejectSharedDirectoryRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RejectSharedDirectoryResult> {
        return client.send(operation: "RejectSharedDirectory", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Removes IP address blocks from a directory.
    public func removeIpRoutes(_ input: RemoveIpRoutesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RemoveIpRoutesResult> {
        return client.send(operation: "RemoveIpRoutes", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Removes tags from a directory.
    public func removeTagsFromResource(_ input: RemoveTagsFromResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RemoveTagsFromResourceResult> {
        return client.send(operation: "RemoveTagsFromResource", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Resets the password for any user in your AWS Managed Microsoft AD or Simple AD directory. You can reset the password for any user in your directory with the following exceptions:   For Simple AD, you cannot reset the password for any user that is a member of either the Domain Admins or Enterprise Admins group except for the administrator user.   For AWS Managed Microsoft AD, you can only reset the password for a user that is in an OU based off of the NetBIOS name that you typed when you created your directory. For example, you cannot reset the password for a user in the AWS Reserved OU. For more information about the OU structure for an AWS Managed Microsoft AD directory, see What Gets Created in the AWS Directory Service Administration Guide.  
    public func resetUserPassword(_ input: ResetUserPasswordRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ResetUserPasswordResult> {
        return client.send(operation: "ResetUserPassword", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Restores a directory using an existing directory snapshot. When you restore a directory from a snapshot, any changes made to the directory after the snapshot date are overwritten. This action returns as soon as the restore operation is initiated. You can monitor the progress of the restore operation by calling the DescribeDirectories operation with the directory identifier. When the DirectoryDescription.Stage value changes to Active, the restore operation is complete.
    public func restoreFromSnapshot(_ input: RestoreFromSnapshotRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RestoreFromSnapshotResult> {
        return client.send(operation: "RestoreFromSnapshot", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Shares a specified directory (DirectoryId) in your AWS account (directory owner) with another AWS account (directory consumer). With this operation you can use your directory from any AWS account and from any Amazon VPC within an AWS Region. When you share your AWS Managed Microsoft AD directory, AWS Directory Service creates a shared directory in the directory consumer account. This shared directory contains the metadata to provide access to the directory within the directory owner account. The shared directory is visible in all VPCs in the directory consumer account. The ShareMethod parameter determines whether the specified directory can be shared between AWS accounts inside the same AWS organization (ORGANIZATIONS). It also determines whether you can share the directory with any other AWS account either inside or outside of the organization (HANDSHAKE). The ShareNotes parameter is only used when HANDSHAKE is called, which sends a directory sharing request to the directory consumer. 
    public func shareDirectory(_ input: ShareDirectoryRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ShareDirectoryResult> {
        return client.send(operation: "ShareDirectory", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Applies a schema extension to a Microsoft AD directory.
    public func startSchemaExtension(_ input: StartSchemaExtensionRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartSchemaExtensionResult> {
        return client.send(operation: "StartSchemaExtension", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Stops the directory sharing between the directory owner and consumer accounts. 
    public func unshareDirectory(_ input: UnshareDirectoryRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UnshareDirectoryResult> {
        return client.send(operation: "UnshareDirectory", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Updates a conditional forwarder that has been set up for your AWS directory.
    public func updateConditionalForwarder(_ input: UpdateConditionalForwarderRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateConditionalForwarderResult> {
        return client.send(operation: "UpdateConditionalForwarder", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Adds or removes domain controllers to or from the directory. Based on the difference between current value and new value (provided through this API call), domain controllers will be added or removed. It may take up to 45 minutes for any new domain controllers to become fully active once the requested number of domain controllers is updated. During this time, you cannot make another update request.
    public func updateNumberOfDomainControllers(_ input: UpdateNumberOfDomainControllersRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateNumberOfDomainControllersResult> {
        return client.send(operation: "UpdateNumberOfDomainControllers", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Updates the Remote Authentication Dial In User Service (RADIUS) server information for an AD Connector or Microsoft AD directory.
    public func updateRadius(_ input: UpdateRadiusRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateRadiusResult> {
        return client.send(operation: "UpdateRadius", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Updates the trust that has been set up between your AWS Managed Microsoft AD directory and an on-premises Active Directory.
    public func updateTrust(_ input: UpdateTrustRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateTrustResult> {
        return client.send(operation: "UpdateTrust", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  AWS Directory Service for Microsoft Active Directory allows you to configure and verify trust relationships. This action verifies a trust relationship between your AWS Managed Microsoft AD directory and an external domain.
    public func verifyTrust(_ input: VerifyTrustRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<VerifyTrustResult> {
        return client.send(operation: "VerifyTrust", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }
}
