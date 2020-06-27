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
Client object for interacting with AWS IoTThingsGraph service.

AWS IoT Things Graph AWS IoT Things Graph provides an integrated set of tools that enable developers to connect devices and services that use different standards, such as units of measure and communication protocols. AWS IoT Things Graph makes it possible to build IoT applications with little to no code by connecting devices and services and defining how they interact at an abstract level. For more information about how AWS IoT Things Graph works, see the User Guide.
*/
public struct IoTThingsGraph {

    //MARK: Member variables

    public let client: AWSClient
    public let serviceConfig: ServiceConfig

    //MARK: Initialization

    /// Initialize the IoTThingsGraph client
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
            amzTarget: "IotThingsGraphFrontEndService",
            service: "iotthingsgraph",
            serviceProtocol: .json(version: "1.1"),
            apiVersion: "2018-09-06",
            endpoint: endpoint,
            possibleErrorTypes: [IoTThingsGraphErrorType.self]
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

    ///  Associates a device with a concrete thing that is in the user's registry. A thing can be associated with only one device at a time. If you associate a thing with a new device id, its previous association will be removed.
    public func associateEntityToThing(_ input: AssociateEntityToThingRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AssociateEntityToThingResponse> {
        return client.send(operation: "AssociateEntityToThing", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates a workflow template. Workflows can be created only in the user's namespace. (The public namespace contains only entities.) The workflow can contain only entities in the specified namespace. The workflow is validated against the entities in the latest version of the user's namespace unless another namespace version is specified in the request.
    public func createFlowTemplate(_ input: CreateFlowTemplateRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateFlowTemplateResponse> {
        return client.send(operation: "CreateFlowTemplate", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates a system instance.  This action validates the system instance, prepares the deployment-related resources. For Greengrass deployments, it updates the Greengrass group that is specified by the greengrassGroupName parameter. It also adds a file to the S3 bucket specified by the s3BucketName parameter. You need to call DeploySystemInstance after running this action. For Greengrass deployments, since this action modifies and adds resources to a Greengrass group and an S3 bucket on the caller's behalf, the calling identity must have write permissions to both the specified Greengrass group and S3 bucket. Otherwise, the call will fail with an authorization error. For cloud deployments, this action requires a flowActionsRoleArn value. This is an IAM role that has permissions to access AWS services, such as AWS Lambda and AWS IoT, that the flow uses when it executes. If the definition document doesn't specify a version of the user's namespace, the latest version will be used by default.
    public func createSystemInstance(_ input: CreateSystemInstanceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateSystemInstanceResponse> {
        return client.send(operation: "CreateSystemInstance", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates a system. The system is validated against the entities in the latest version of the user's namespace unless another namespace version is specified in the request.
    public func createSystemTemplate(_ input: CreateSystemTemplateRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateSystemTemplateResponse> {
        return client.send(operation: "CreateSystemTemplate", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes a workflow. Any new system or deployment that contains this workflow will fail to update or deploy. Existing deployments that contain the workflow will continue to run (since they use a snapshot of the workflow taken at the time of deployment).
    public func deleteFlowTemplate(_ input: DeleteFlowTemplateRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteFlowTemplateResponse> {
        return client.send(operation: "DeleteFlowTemplate", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes the specified namespace. This action deletes all of the entities in the namespace. Delete the systems and flows that use entities in the namespace before performing this action.
    public func deleteNamespace(_ input: DeleteNamespaceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteNamespaceResponse> {
        return client.send(operation: "DeleteNamespace", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes a system instance. Only system instances that have never been deployed, or that have been undeployed can be deleted. Users can create a new system instance that has the same ID as a deleted system instance.
    public func deleteSystemInstance(_ input: DeleteSystemInstanceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteSystemInstanceResponse> {
        return client.send(operation: "DeleteSystemInstance", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes a system. New deployments can't contain the system after its deletion. Existing deployments that contain the system will continue to work because they use a snapshot of the system that is taken when it is deployed.
    public func deleteSystemTemplate(_ input: DeleteSystemTemplateRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteSystemTemplateResponse> {
        return client.send(operation: "DeleteSystemTemplate", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///   Greengrass and Cloud Deployments  Deploys the system instance to the target specified in CreateSystemInstance.   Greengrass Deployments  If the system or any workflows and entities have been updated before this action is called, then the deployment will create a new Amazon Simple Storage Service resource file and then deploy it. Since this action creates a Greengrass deployment on the caller's behalf, the calling identity must have write permissions to the specified Greengrass group. Otherwise, the call will fail with an authorization error. For information about the artifacts that get added to your Greengrass core device when you use this API, see AWS IoT Things Graph and AWS IoT Greengrass.
    public func deploySystemInstance(_ input: DeploySystemInstanceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeploySystemInstanceResponse> {
        return client.send(operation: "DeploySystemInstance", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deprecates the specified workflow. This action marks the workflow for deletion. Deprecated flows can't be deployed, but existing deployments will continue to run.
    public func deprecateFlowTemplate(_ input: DeprecateFlowTemplateRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeprecateFlowTemplateResponse> {
        return client.send(operation: "DeprecateFlowTemplate", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deprecates the specified system.
    public func deprecateSystemTemplate(_ input: DeprecateSystemTemplateRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeprecateSystemTemplateResponse> {
        return client.send(operation: "DeprecateSystemTemplate", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Gets the latest version of the user's namespace and the public version that it is tracking.
    public func describeNamespace(_ input: DescribeNamespaceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeNamespaceResponse> {
        return client.send(operation: "DescribeNamespace", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Dissociates a device entity from a concrete thing. The action takes only the type of the entity that you need to dissociate because only one entity of a particular type can be associated with a thing.
    public func dissociateEntityFromThing(_ input: DissociateEntityFromThingRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DissociateEntityFromThingResponse> {
        return client.send(operation: "DissociateEntityFromThing", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Gets definitions of the specified entities. Uses the latest version of the user's namespace by default. This API returns the following TDM entities.   Properties   States   Events   Actions   Capabilities   Mappings   Devices   Device Models   Services   This action doesn't return definitions for systems, flows, and deployments.
    public func getEntities(_ input: GetEntitiesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetEntitiesResponse> {
        return client.send(operation: "GetEntities", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Gets the latest version of the DefinitionDocument and FlowTemplateSummary for the specified workflow.
    public func getFlowTemplate(_ input: GetFlowTemplateRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetFlowTemplateResponse> {
        return client.send(operation: "GetFlowTemplate", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Gets revisions of the specified workflow. Only the last 100 revisions are stored. If the workflow has been deprecated, this action will return revisions that occurred before the deprecation. This action won't work for workflows that have been deleted.
    public func getFlowTemplateRevisions(_ input: GetFlowTemplateRevisionsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetFlowTemplateRevisionsResponse> {
        return client.send(operation: "GetFlowTemplateRevisions", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Gets the status of a namespace deletion task.
    public func getNamespaceDeletionStatus(_ input: GetNamespaceDeletionStatusRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetNamespaceDeletionStatusResponse> {
        return client.send(operation: "GetNamespaceDeletionStatus", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Gets a system instance.
    public func getSystemInstance(_ input: GetSystemInstanceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetSystemInstanceResponse> {
        return client.send(operation: "GetSystemInstance", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Gets a system.
    public func getSystemTemplate(_ input: GetSystemTemplateRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetSystemTemplateResponse> {
        return client.send(operation: "GetSystemTemplate", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Gets revisions made to the specified system template. Only the previous 100 revisions are stored. If the system has been deprecated, this action will return the revisions that occurred before its deprecation. This action won't work with systems that have been deleted.
    public func getSystemTemplateRevisions(_ input: GetSystemTemplateRevisionsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetSystemTemplateRevisionsResponse> {
        return client.send(operation: "GetSystemTemplateRevisions", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Gets the status of the specified upload.
    public func getUploadStatus(_ input: GetUploadStatusRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetUploadStatusResponse> {
        return client.send(operation: "GetUploadStatus", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Returns a list of objects that contain information about events in a flow execution.
    public func listFlowExecutionMessages(_ input: ListFlowExecutionMessagesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListFlowExecutionMessagesResponse> {
        return client.send(operation: "ListFlowExecutionMessages", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Lists all tags on an AWS IoT Things Graph resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTagsForResourceResponse> {
        return client.send(operation: "ListTagsForResource", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Searches for entities of the specified type. You can search for entities in your namespace and the public namespace that you're tracking.
    public func searchEntities(_ input: SearchEntitiesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SearchEntitiesResponse> {
        return client.send(operation: "SearchEntities", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Searches for AWS IoT Things Graph workflow execution instances.
    public func searchFlowExecutions(_ input: SearchFlowExecutionsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SearchFlowExecutionsResponse> {
        return client.send(operation: "SearchFlowExecutions", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Searches for summary information about workflows.
    public func searchFlowTemplates(_ input: SearchFlowTemplatesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SearchFlowTemplatesResponse> {
        return client.send(operation: "SearchFlowTemplates", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Searches for system instances in the user's account.
    public func searchSystemInstances(_ input: SearchSystemInstancesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SearchSystemInstancesResponse> {
        return client.send(operation: "SearchSystemInstances", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Searches for summary information about systems in the user's account. You can filter by the ID of a workflow to return only systems that use the specified workflow.
    public func searchSystemTemplates(_ input: SearchSystemTemplatesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SearchSystemTemplatesResponse> {
        return client.send(operation: "SearchSystemTemplates", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Searches for things associated with the specified entity. You can search by both device and device model. For example, if two different devices, camera1 and camera2, implement the camera device model, the user can associate thing1 to camera1 and thing2 to camera2. SearchThings(camera2) will return only thing2, but SearchThings(camera) will return both thing1 and thing2. This action searches for exact matches and doesn't perform partial text matching.
    public func searchThings(_ input: SearchThingsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SearchThingsResponse> {
        return client.send(operation: "SearchThings", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates a tag for the specified resource.
    public func tagResource(_ input: TagResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TagResourceResponse> {
        return client.send(operation: "TagResource", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Removes a system instance from its target (Cloud or Greengrass).
    public func undeploySystemInstance(_ input: UndeploySystemInstanceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UndeploySystemInstanceResponse> {
        return client.send(operation: "UndeploySystemInstance", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Removes a tag from the specified resource.
    public func untagResource(_ input: UntagResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UntagResourceResponse> {
        return client.send(operation: "UntagResource", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Updates the specified workflow. All deployed systems and system instances that use the workflow will see the changes in the flow when it is redeployed. If you don't want this behavior, copy the workflow (creating a new workflow with a different ID), and update the copy. The workflow can contain only entities in the specified namespace. 
    public func updateFlowTemplate(_ input: UpdateFlowTemplateRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateFlowTemplateResponse> {
        return client.send(operation: "UpdateFlowTemplate", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Updates the specified system. You don't need to run this action after updating a workflow. Any deployment that uses the system will see the changes in the system when it is redeployed.
    public func updateSystemTemplate(_ input: UpdateSystemTemplateRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateSystemTemplateResponse> {
        return client.send(operation: "UpdateSystemTemplate", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Asynchronously uploads one or more entity definitions to the user's namespace. The document parameter is required if syncWithPublicNamespace and deleteExistingEntites are false. If the syncWithPublicNamespace parameter is set to true, the user's namespace will synchronize with the latest version of the public namespace. If deprecateExistingEntities is set to true, all entities in the latest version will be deleted before the new DefinitionDocument is uploaded. When a user uploads entity definitions for the first time, the service creates a new namespace for the user. The new namespace tracks the public namespace. Currently users can have only one namespace. The namespace version increments whenever a user uploads entity definitions that are backwards-incompatible and whenever a user sets the syncWithPublicNamespace parameter or the deprecateExistingEntities parameter to true. The IDs for all of the entities should be in URN format. Each entity must be in the user's namespace. Users can't create entities in the public namespace, but entity definitions can refer to entities in the public namespace. Valid entities are Device, DeviceModel, Service, Capability, State, Action, Event, Property, Mapping, Enum. 
    public func uploadEntityDefinitions(_ input: UploadEntityDefinitionsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UploadEntityDefinitionsResponse> {
        return client.send(operation: "UploadEntityDefinitions", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }
}
