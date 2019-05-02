// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore

extension MigrationHub {

    public enum ApplicationStatus: String, CustomStringConvertible, Codable {
        case notStarted = "NOT_STARTED"
        case inProgress = "IN_PROGRESS"
        case completed = "COMPLETED"
        public var description: String { return self.rawValue }
    }

    public struct AssociateCreatedArtifactRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "CreatedArtifact", required: true, type: .structure), 
            AWSShapeMember(label: "DryRun", required: false, type: .boolean), 
            AWSShapeMember(label: "MigrationTaskName", required: true, type: .string), 
            AWSShapeMember(label: "ProgressUpdateStream", required: true, type: .string)
        ]
        /// An ARN of the AWS resource related to the migration (e.g., AMI, EC2 instance, RDS instance, etc.) 
        public let createdArtifact: CreatedArtifact
        /// Optional boolean flag to indicate whether any effect should take place. Used to test if the caller has permission to make the call.
        public let dryRun: Bool?
        /// Unique identifier that references the migration task.
        public let migrationTaskName: String
        /// The name of the ProgressUpdateStream. 
        public let progressUpdateStream: String

        public init(createdArtifact: CreatedArtifact, dryRun: Bool? = nil, migrationTaskName: String, progressUpdateStream: String) {
            self.createdArtifact = createdArtifact
            self.dryRun = dryRun
            self.migrationTaskName = migrationTaskName
            self.progressUpdateStream = progressUpdateStream
        }

        private enum CodingKeys: String, CodingKey {
            case createdArtifact = "CreatedArtifact"
            case dryRun = "DryRun"
            case migrationTaskName = "MigrationTaskName"
            case progressUpdateStream = "ProgressUpdateStream"
        }
    }

    public struct AssociateCreatedArtifactResult: AWSShape {

        public init() {
        }

    }

    public struct AssociateDiscoveredResourceRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "DiscoveredResource", required: true, type: .structure), 
            AWSShapeMember(label: "DryRun", required: false, type: .boolean), 
            AWSShapeMember(label: "MigrationTaskName", required: true, type: .string), 
            AWSShapeMember(label: "ProgressUpdateStream", required: true, type: .string)
        ]
        /// Object representing a Resource.
        public let discoveredResource: DiscoveredResource
        /// Optional boolean flag to indicate whether any effect should take place. Used to test if the caller has permission to make the call.
        public let dryRun: Bool?
        /// The identifier given to the MigrationTask.
        public let migrationTaskName: String
        /// The name of the ProgressUpdateStream.
        public let progressUpdateStream: String

        public init(discoveredResource: DiscoveredResource, dryRun: Bool? = nil, migrationTaskName: String, progressUpdateStream: String) {
            self.discoveredResource = discoveredResource
            self.dryRun = dryRun
            self.migrationTaskName = migrationTaskName
            self.progressUpdateStream = progressUpdateStream
        }

        private enum CodingKeys: String, CodingKey {
            case discoveredResource = "DiscoveredResource"
            case dryRun = "DryRun"
            case migrationTaskName = "MigrationTaskName"
            case progressUpdateStream = "ProgressUpdateStream"
        }
    }

    public struct AssociateDiscoveredResourceResult: AWSShape {

        public init() {
        }

    }

    public struct CreateProgressUpdateStreamRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "DryRun", required: false, type: .boolean), 
            AWSShapeMember(label: "ProgressUpdateStreamName", required: true, type: .string)
        ]
        /// Optional boolean flag to indicate whether any effect should take place. Used to test if the caller has permission to make the call.
        public let dryRun: Bool?
        /// The name of the ProgressUpdateStream. 
        public let progressUpdateStreamName: String

        public init(dryRun: Bool? = nil, progressUpdateStreamName: String) {
            self.dryRun = dryRun
            self.progressUpdateStreamName = progressUpdateStreamName
        }

        private enum CodingKeys: String, CodingKey {
            case dryRun = "DryRun"
            case progressUpdateStreamName = "ProgressUpdateStreamName"
        }
    }

    public struct CreateProgressUpdateStreamResult: AWSShape {

        public init() {
        }

    }

    public struct CreatedArtifact: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Description", required: false, type: .string), 
            AWSShapeMember(label: "Name", required: true, type: .string)
        ]
        /// A description that can be free-form text to record additional detail about the artifact for clarity or for later reference.
        public let description: String?
        /// An ARN that uniquely identifies the result of a migration task.
        public let name: String

        public init(description: String? = nil, name: String) {
            self.description = description
            self.name = name
        }

        private enum CodingKeys: String, CodingKey {
            case description = "Description"
            case name = "Name"
        }
    }

    public struct DeleteProgressUpdateStreamRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "DryRun", required: false, type: .boolean), 
            AWSShapeMember(label: "ProgressUpdateStreamName", required: true, type: .string)
        ]
        /// Optional boolean flag to indicate whether any effect should take place. Used to test if the caller has permission to make the call.
        public let dryRun: Bool?
        /// The name of the ProgressUpdateStream. 
        public let progressUpdateStreamName: String

        public init(dryRun: Bool? = nil, progressUpdateStreamName: String) {
            self.dryRun = dryRun
            self.progressUpdateStreamName = progressUpdateStreamName
        }

        private enum CodingKeys: String, CodingKey {
            case dryRun = "DryRun"
            case progressUpdateStreamName = "ProgressUpdateStreamName"
        }
    }

    public struct DeleteProgressUpdateStreamResult: AWSShape {

        public init() {
        }

    }

    public struct DescribeApplicationStateRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ApplicationId", required: true, type: .string)
        ]
        /// The configurationId in ADS that uniquely identifies the grouped application.
        public let applicationId: String

        public init(applicationId: String) {
            self.applicationId = applicationId
        }

        private enum CodingKeys: String, CodingKey {
            case applicationId = "ApplicationId"
        }
    }

    public struct DescribeApplicationStateResult: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ApplicationStatus", required: false, type: .enum), 
            AWSShapeMember(label: "LastUpdatedTime", required: false, type: .timestamp)
        ]
        /// Status of the application - Not Started, In-Progress, Complete.
        public let applicationStatus: ApplicationStatus?
        /// The timestamp when the application status was last updated.
        public let lastUpdatedTime: TimeStamp?

        public init(applicationStatus: ApplicationStatus? = nil, lastUpdatedTime: TimeStamp? = nil) {
            self.applicationStatus = applicationStatus
            self.lastUpdatedTime = lastUpdatedTime
        }

        private enum CodingKeys: String, CodingKey {
            case applicationStatus = "ApplicationStatus"
            case lastUpdatedTime = "LastUpdatedTime"
        }
    }

    public struct DescribeMigrationTaskRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "MigrationTaskName", required: true, type: .string), 
            AWSShapeMember(label: "ProgressUpdateStream", required: true, type: .string)
        ]
        /// The identifier given to the MigrationTask.
        public let migrationTaskName: String
        /// The name of the ProgressUpdateStream. 
        public let progressUpdateStream: String

        public init(migrationTaskName: String, progressUpdateStream: String) {
            self.migrationTaskName = migrationTaskName
            self.progressUpdateStream = progressUpdateStream
        }

        private enum CodingKeys: String, CodingKey {
            case migrationTaskName = "MigrationTaskName"
            case progressUpdateStream = "ProgressUpdateStream"
        }
    }

    public struct DescribeMigrationTaskResult: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "MigrationTask", required: false, type: .structure)
        ]
        /// Object encapsulating information about the migration task.
        public let migrationTask: MigrationTask?

        public init(migrationTask: MigrationTask? = nil) {
            self.migrationTask = migrationTask
        }

        private enum CodingKeys: String, CodingKey {
            case migrationTask = "MigrationTask"
        }
    }

    public struct DisassociateCreatedArtifactRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "CreatedArtifactName", required: true, type: .string), 
            AWSShapeMember(label: "DryRun", required: false, type: .boolean), 
            AWSShapeMember(label: "MigrationTaskName", required: true, type: .string), 
            AWSShapeMember(label: "ProgressUpdateStream", required: true, type: .string)
        ]
        /// An ARN of the AWS resource related to the migration (e.g., AMI, EC2 instance, RDS instance, etc.)
        public let createdArtifactName: String
        /// Optional boolean flag to indicate whether any effect should take place. Used to test if the caller has permission to make the call.
        public let dryRun: Bool?
        /// Unique identifier that references the migration task to be disassociated with the artifact.
        public let migrationTaskName: String
        /// The name of the ProgressUpdateStream. 
        public let progressUpdateStream: String

        public init(createdArtifactName: String, dryRun: Bool? = nil, migrationTaskName: String, progressUpdateStream: String) {
            self.createdArtifactName = createdArtifactName
            self.dryRun = dryRun
            self.migrationTaskName = migrationTaskName
            self.progressUpdateStream = progressUpdateStream
        }

        private enum CodingKeys: String, CodingKey {
            case createdArtifactName = "CreatedArtifactName"
            case dryRun = "DryRun"
            case migrationTaskName = "MigrationTaskName"
            case progressUpdateStream = "ProgressUpdateStream"
        }
    }

    public struct DisassociateCreatedArtifactResult: AWSShape {

        public init() {
        }

    }

    public struct DisassociateDiscoveredResourceRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ConfigurationId", required: true, type: .string), 
            AWSShapeMember(label: "DryRun", required: false, type: .boolean), 
            AWSShapeMember(label: "MigrationTaskName", required: true, type: .string), 
            AWSShapeMember(label: "ProgressUpdateStream", required: true, type: .string)
        ]
        /// ConfigurationId of the ADS resource to be disassociated.
        public let configurationId: String
        /// Optional boolean flag to indicate whether any effect should take place. Used to test if the caller has permission to make the call.
        public let dryRun: Bool?
        /// The identifier given to the MigrationTask.
        public let migrationTaskName: String
        /// The name of the ProgressUpdateStream.
        public let progressUpdateStream: String

        public init(configurationId: String, dryRun: Bool? = nil, migrationTaskName: String, progressUpdateStream: String) {
            self.configurationId = configurationId
            self.dryRun = dryRun
            self.migrationTaskName = migrationTaskName
            self.progressUpdateStream = progressUpdateStream
        }

        private enum CodingKeys: String, CodingKey {
            case configurationId = "ConfigurationId"
            case dryRun = "DryRun"
            case migrationTaskName = "MigrationTaskName"
            case progressUpdateStream = "ProgressUpdateStream"
        }
    }

    public struct DisassociateDiscoveredResourceResult: AWSShape {

        public init() {
        }

    }

    public struct DiscoveredResource: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ConfigurationId", required: true, type: .string), 
            AWSShapeMember(label: "Description", required: false, type: .string)
        ]
        /// The configurationId in ADS that uniquely identifies the on-premise resource.
        public let configurationId: String
        /// A description that can be free-form text to record additional detail about the discovered resource for clarity or later reference.
        public let description: String?

        public init(configurationId: String, description: String? = nil) {
            self.configurationId = configurationId
            self.description = description
        }

        private enum CodingKeys: String, CodingKey {
            case configurationId = "ConfigurationId"
            case description = "Description"
        }
    }

    public struct ImportMigrationTaskRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "DryRun", required: false, type: .boolean), 
            AWSShapeMember(label: "MigrationTaskName", required: true, type: .string), 
            AWSShapeMember(label: "ProgressUpdateStream", required: true, type: .string)
        ]
        /// Optional boolean flag to indicate whether any effect should take place. Used to test if the caller has permission to make the call.
        public let dryRun: Bool?
        /// Unique identifier that references the migration task.
        public let migrationTaskName: String
        /// The name of the ProgressUpdateStream. 
        public let progressUpdateStream: String

        public init(dryRun: Bool? = nil, migrationTaskName: String, progressUpdateStream: String) {
            self.dryRun = dryRun
            self.migrationTaskName = migrationTaskName
            self.progressUpdateStream = progressUpdateStream
        }

        private enum CodingKeys: String, CodingKey {
            case dryRun = "DryRun"
            case migrationTaskName = "MigrationTaskName"
            case progressUpdateStream = "ProgressUpdateStream"
        }
    }

    public struct ImportMigrationTaskResult: AWSShape {

        public init() {
        }

    }

    public struct ListCreatedArtifactsRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "MaxResults", required: false, type: .integer), 
            AWSShapeMember(label: "MigrationTaskName", required: true, type: .string), 
            AWSShapeMember(label: "NextToken", required: false, type: .string), 
            AWSShapeMember(label: "ProgressUpdateStream", required: true, type: .string)
        ]
        /// Maximum number of results to be returned per page.
        public let maxResults: Int32?
        /// Unique identifier that references the migration task.
        public let migrationTaskName: String
        /// If a NextToken was returned by a previous call, there are more results available. To retrieve the next page of results, make the call again using the returned token in NextToken.
        public let nextToken: String?
        /// The name of the ProgressUpdateStream. 
        public let progressUpdateStream: String

        public init(maxResults: Int32? = nil, migrationTaskName: String, nextToken: String? = nil, progressUpdateStream: String) {
            self.maxResults = maxResults
            self.migrationTaskName = migrationTaskName
            self.nextToken = nextToken
            self.progressUpdateStream = progressUpdateStream
        }

        private enum CodingKeys: String, CodingKey {
            case maxResults = "MaxResults"
            case migrationTaskName = "MigrationTaskName"
            case nextToken = "NextToken"
            case progressUpdateStream = "ProgressUpdateStream"
        }
    }

    public struct ListCreatedArtifactsResult: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "CreatedArtifactList", required: false, type: .list), 
            AWSShapeMember(label: "NextToken", required: false, type: .string)
        ]
        /// List of created artifacts up to the maximum number of results specified in the request.
        public let createdArtifactList: [CreatedArtifact]?
        /// If there are more created artifacts than the max result, return the next token to be passed to the next call as a bookmark of where to start from.
        public let nextToken: String?

        public init(createdArtifactList: [CreatedArtifact]? = nil, nextToken: String? = nil) {
            self.createdArtifactList = createdArtifactList
            self.nextToken = nextToken
        }

        private enum CodingKeys: String, CodingKey {
            case createdArtifactList = "CreatedArtifactList"
            case nextToken = "NextToken"
        }
    }

    public struct ListDiscoveredResourcesRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "MaxResults", required: false, type: .integer), 
            AWSShapeMember(label: "MigrationTaskName", required: true, type: .string), 
            AWSShapeMember(label: "NextToken", required: false, type: .string), 
            AWSShapeMember(label: "ProgressUpdateStream", required: true, type: .string)
        ]
        /// The maximum number of results returned per page.
        public let maxResults: Int32?
        /// The name of the MigrationTask.
        public let migrationTaskName: String
        /// If a NextToken was returned by a previous call, there are more results available. To retrieve the next page of results, make the call again using the returned token in NextToken.
        public let nextToken: String?
        /// The name of the ProgressUpdateStream.
        public let progressUpdateStream: String

        public init(maxResults: Int32? = nil, migrationTaskName: String, nextToken: String? = nil, progressUpdateStream: String) {
            self.maxResults = maxResults
            self.migrationTaskName = migrationTaskName
            self.nextToken = nextToken
            self.progressUpdateStream = progressUpdateStream
        }

        private enum CodingKeys: String, CodingKey {
            case maxResults = "MaxResults"
            case migrationTaskName = "MigrationTaskName"
            case nextToken = "NextToken"
            case progressUpdateStream = "ProgressUpdateStream"
        }
    }

    public struct ListDiscoveredResourcesResult: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "DiscoveredResourceList", required: false, type: .list), 
            AWSShapeMember(label: "NextToken", required: false, type: .string)
        ]
        /// Returned list of discovered resources associated with the given MigrationTask.
        public let discoveredResourceList: [DiscoveredResource]?
        /// If there are more discovered resources than the max result, return the next token to be passed to the next call as a bookmark of where to start from.
        public let nextToken: String?

        public init(discoveredResourceList: [DiscoveredResource]? = nil, nextToken: String? = nil) {
            self.discoveredResourceList = discoveredResourceList
            self.nextToken = nextToken
        }

        private enum CodingKeys: String, CodingKey {
            case discoveredResourceList = "DiscoveredResourceList"
            case nextToken = "NextToken"
        }
    }

    public struct ListMigrationTasksRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "MaxResults", required: false, type: .integer), 
            AWSShapeMember(label: "NextToken", required: false, type: .string), 
            AWSShapeMember(label: "ResourceName", required: false, type: .string)
        ]
        /// Value to specify how many results are returned per page.
        public let maxResults: Int32?
        /// If a NextToken was returned by a previous call, there are more results available. To retrieve the next page of results, make the call again using the returned token in NextToken.
        public let nextToken: String?
        /// Filter migration tasks by discovered resource name.
        public let resourceName: String?

        public init(maxResults: Int32? = nil, nextToken: String? = nil, resourceName: String? = nil) {
            self.maxResults = maxResults
            self.nextToken = nextToken
            self.resourceName = resourceName
        }

        private enum CodingKeys: String, CodingKey {
            case maxResults = "MaxResults"
            case nextToken = "NextToken"
            case resourceName = "ResourceName"
        }
    }

    public struct ListMigrationTasksResult: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "MigrationTaskSummaryList", required: false, type: .list), 
            AWSShapeMember(label: "NextToken", required: false, type: .string)
        ]
        /// Lists the migration task's summary which includes: MigrationTaskName, ProgressPercent, ProgressUpdateStream, Status, and the UpdateDateTime for each task.
        public let migrationTaskSummaryList: [MigrationTaskSummary]?
        /// If there are more migration tasks than the max result, return the next token to be passed to the next call as a bookmark of where to start from.
        public let nextToken: String?

        public init(migrationTaskSummaryList: [MigrationTaskSummary]? = nil, nextToken: String? = nil) {
            self.migrationTaskSummaryList = migrationTaskSummaryList
            self.nextToken = nextToken
        }

        private enum CodingKeys: String, CodingKey {
            case migrationTaskSummaryList = "MigrationTaskSummaryList"
            case nextToken = "NextToken"
        }
    }

    public struct ListProgressUpdateStreamsRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "MaxResults", required: false, type: .integer), 
            AWSShapeMember(label: "NextToken", required: false, type: .string)
        ]
        /// Filter to limit the maximum number of results to list per page.
        public let maxResults: Int32?
        /// If a NextToken was returned by a previous call, there are more results available. To retrieve the next page of results, make the call again using the returned token in NextToken.
        public let nextToken: String?

        public init(maxResults: Int32? = nil, nextToken: String? = nil) {
            self.maxResults = maxResults
            self.nextToken = nextToken
        }

        private enum CodingKeys: String, CodingKey {
            case maxResults = "MaxResults"
            case nextToken = "NextToken"
        }
    }

    public struct ListProgressUpdateStreamsResult: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "NextToken", required: false, type: .string), 
            AWSShapeMember(label: "ProgressUpdateStreamSummaryList", required: false, type: .list)
        ]
        /// If there are more streams created than the max result, return the next token to be passed to the next call as a bookmark of where to start from.
        public let nextToken: String?
        /// List of progress update streams up to the max number of results passed in the input.
        public let progressUpdateStreamSummaryList: [ProgressUpdateStreamSummary]?

        public init(nextToken: String? = nil, progressUpdateStreamSummaryList: [ProgressUpdateStreamSummary]? = nil) {
            self.nextToken = nextToken
            self.progressUpdateStreamSummaryList = progressUpdateStreamSummaryList
        }

        private enum CodingKeys: String, CodingKey {
            case nextToken = "NextToken"
            case progressUpdateStreamSummaryList = "ProgressUpdateStreamSummaryList"
        }
    }

    public struct MigrationTask: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "MigrationTaskName", required: false, type: .string), 
            AWSShapeMember(label: "ProgressUpdateStream", required: false, type: .string), 
            AWSShapeMember(label: "ResourceAttributeList", required: false, type: .list), 
            AWSShapeMember(label: "Task", required: false, type: .structure), 
            AWSShapeMember(label: "UpdateDateTime", required: false, type: .timestamp)
        ]
        /// Unique identifier that references the migration task.
        public let migrationTaskName: String?
        /// A name that identifies the vendor of the migration tool being used.
        public let progressUpdateStream: String?
        public let resourceAttributeList: [ResourceAttribute]?
        /// Task object encapsulating task information.
        public let task: Task?
        /// The timestamp when the task was gathered.
        public let updateDateTime: TimeStamp?

        public init(migrationTaskName: String? = nil, progressUpdateStream: String? = nil, resourceAttributeList: [ResourceAttribute]? = nil, task: Task? = nil, updateDateTime: TimeStamp? = nil) {
            self.migrationTaskName = migrationTaskName
            self.progressUpdateStream = progressUpdateStream
            self.resourceAttributeList = resourceAttributeList
            self.task = task
            self.updateDateTime = updateDateTime
        }

        private enum CodingKeys: String, CodingKey {
            case migrationTaskName = "MigrationTaskName"
            case progressUpdateStream = "ProgressUpdateStream"
            case resourceAttributeList = "ResourceAttributeList"
            case task = "Task"
            case updateDateTime = "UpdateDateTime"
        }
    }

    public struct MigrationTaskSummary: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "MigrationTaskName", required: false, type: .string), 
            AWSShapeMember(label: "ProgressPercent", required: false, type: .integer), 
            AWSShapeMember(label: "ProgressUpdateStream", required: false, type: .string), 
            AWSShapeMember(label: "Status", required: false, type: .enum), 
            AWSShapeMember(label: "StatusDetail", required: false, type: .string), 
            AWSShapeMember(label: "UpdateDateTime", required: false, type: .timestamp)
        ]
        /// Unique identifier that references the migration task.
        public let migrationTaskName: String?
        public let progressPercent: Int32?
        /// An AWS resource used for access control. It should uniquely identify the migration tool as it is used for all updates made by the tool.
        public let progressUpdateStream: String?
        /// Status of the task.
        public let status: Status?
        /// Detail information of what is being done within the overall status state.
        public let statusDetail: String?
        /// The timestamp when the task was gathered.
        public let updateDateTime: TimeStamp?

        public init(migrationTaskName: String? = nil, progressPercent: Int32? = nil, progressUpdateStream: String? = nil, status: Status? = nil, statusDetail: String? = nil, updateDateTime: TimeStamp? = nil) {
            self.migrationTaskName = migrationTaskName
            self.progressPercent = progressPercent
            self.progressUpdateStream = progressUpdateStream
            self.status = status
            self.statusDetail = statusDetail
            self.updateDateTime = updateDateTime
        }

        private enum CodingKeys: String, CodingKey {
            case migrationTaskName = "MigrationTaskName"
            case progressPercent = "ProgressPercent"
            case progressUpdateStream = "ProgressUpdateStream"
            case status = "Status"
            case statusDetail = "StatusDetail"
            case updateDateTime = "UpdateDateTime"
        }
    }

    public struct NotifyApplicationStateRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ApplicationId", required: true, type: .string), 
            AWSShapeMember(label: "DryRun", required: false, type: .boolean), 
            AWSShapeMember(label: "Status", required: true, type: .enum)
        ]
        /// The configurationId in ADS that uniquely identifies the grouped application.
        public let applicationId: String
        /// Optional boolean flag to indicate whether any effect should take place. Used to test if the caller has permission to make the call.
        public let dryRun: Bool?
        /// Status of the application - Not Started, In-Progress, Complete.
        public let status: ApplicationStatus

        public init(applicationId: String, dryRun: Bool? = nil, status: ApplicationStatus) {
            self.applicationId = applicationId
            self.dryRun = dryRun
            self.status = status
        }

        private enum CodingKeys: String, CodingKey {
            case applicationId = "ApplicationId"
            case dryRun = "DryRun"
            case status = "Status"
        }
    }

    public struct NotifyApplicationStateResult: AWSShape {

        public init() {
        }

    }

    public struct NotifyMigrationTaskStateRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "DryRun", required: false, type: .boolean), 
            AWSShapeMember(label: "MigrationTaskName", required: true, type: .string), 
            AWSShapeMember(label: "NextUpdateSeconds", required: true, type: .integer), 
            AWSShapeMember(label: "ProgressUpdateStream", required: true, type: .string), 
            AWSShapeMember(label: "Task", required: true, type: .structure), 
            AWSShapeMember(label: "UpdateDateTime", required: true, type: .timestamp)
        ]
        /// Optional boolean flag to indicate whether any effect should take place. Used to test if the caller has permission to make the call.
        public let dryRun: Bool?
        /// Unique identifier that references the migration task.
        public let migrationTaskName: String
        /// Number of seconds after the UpdateDateTime within which the Migration Hub can expect an update. If Migration Hub does not receive an update within the specified interval, then the migration task will be considered stale.
        public let nextUpdateSeconds: Int32
        /// The name of the ProgressUpdateStream. 
        public let progressUpdateStream: String
        /// Information about the task's progress and status.
        public let task: Task
        /// The timestamp when the task was gathered.
        public let updateDateTime: TimeStamp

        public init(dryRun: Bool? = nil, migrationTaskName: String, nextUpdateSeconds: Int32, progressUpdateStream: String, task: Task, updateDateTime: TimeStamp) {
            self.dryRun = dryRun
            self.migrationTaskName = migrationTaskName
            self.nextUpdateSeconds = nextUpdateSeconds
            self.progressUpdateStream = progressUpdateStream
            self.task = task
            self.updateDateTime = updateDateTime
        }

        private enum CodingKeys: String, CodingKey {
            case dryRun = "DryRun"
            case migrationTaskName = "MigrationTaskName"
            case nextUpdateSeconds = "NextUpdateSeconds"
            case progressUpdateStream = "ProgressUpdateStream"
            case task = "Task"
            case updateDateTime = "UpdateDateTime"
        }
    }

    public struct NotifyMigrationTaskStateResult: AWSShape {

        public init() {
        }

    }

    public struct ProgressUpdateStreamSummary: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ProgressUpdateStreamName", required: false, type: .string)
        ]
        /// The name of the ProgressUpdateStream. 
        public let progressUpdateStreamName: String?

        public init(progressUpdateStreamName: String? = nil) {
            self.progressUpdateStreamName = progressUpdateStreamName
        }

        private enum CodingKeys: String, CodingKey {
            case progressUpdateStreamName = "ProgressUpdateStreamName"
        }
    }

    public struct PutResourceAttributesRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "DryRun", required: false, type: .boolean), 
            AWSShapeMember(label: "MigrationTaskName", required: true, type: .string), 
            AWSShapeMember(label: "ProgressUpdateStream", required: true, type: .string), 
            AWSShapeMember(label: "ResourceAttributeList", required: true, type: .list)
        ]
        /// Optional boolean flag to indicate whether any effect should take place. Used to test if the caller has permission to make the call.
        public let dryRun: Bool?
        /// Unique identifier that references the migration task.
        public let migrationTaskName: String
        /// The name of the ProgressUpdateStream. 
        public let progressUpdateStream: String
        /// Information about the resource that is being migrated. This data will be used to map the task to a resource in the Application Discovery Service (ADS)'s repository.  Takes the object array of ResourceAttribute where the Type field is reserved for the following values: IPV4_ADDRESS | IPV6_ADDRESS | MAC_ADDRESS | FQDN | VM_MANAGER_ID | VM_MANAGED_OBJECT_REFERENCE | VM_NAME | VM_PATH | BIOS_ID | MOTHERBOARD_SERIAL_NUMBER where the identifying value can be a string up to 256 characters.     If any "VM" related value is set for a ResourceAttribute object, it is required that VM_MANAGER_ID, as a minimum, is always set. If VM_MANAGER_ID is not set, then all "VM" fields will be discarded and "VM" fields will not be used for matching the migration task to a server in Application Discovery Service (ADS)'s repository. See the Example section below for a use case of specifying "VM" related values.    If a server you are trying to match has multiple IP or MAC addresses, you should provide as many as you know in separate type/value pairs passed to the ResourceAttributeList parameter to maximize the chances of matching.   
        public let resourceAttributeList: [ResourceAttribute]

        public init(dryRun: Bool? = nil, migrationTaskName: String, progressUpdateStream: String, resourceAttributeList: [ResourceAttribute]) {
            self.dryRun = dryRun
            self.migrationTaskName = migrationTaskName
            self.progressUpdateStream = progressUpdateStream
            self.resourceAttributeList = resourceAttributeList
        }

        private enum CodingKeys: String, CodingKey {
            case dryRun = "DryRun"
            case migrationTaskName = "MigrationTaskName"
            case progressUpdateStream = "ProgressUpdateStream"
            case resourceAttributeList = "ResourceAttributeList"
        }
    }

    public struct PutResourceAttributesResult: AWSShape {

        public init() {
        }

    }

    public struct ResourceAttribute: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Type", required: true, type: .enum), 
            AWSShapeMember(label: "Value", required: true, type: .string)
        ]
        /// Type of resource.
        public let `type`: ResourceAttributeType
        /// Value of the resource type.
        public let value: String

        public init(type: ResourceAttributeType, value: String) {
            self.`type` = `type`
            self.value = value
        }

        private enum CodingKeys: String, CodingKey {
            case `type` = "Type"
            case value = "Value"
        }
    }

    public enum ResourceAttributeType: String, CustomStringConvertible, Codable {
        case ipv4Address = "IPV4_ADDRESS"
        case ipv6Address = "IPV6_ADDRESS"
        case macAddress = "MAC_ADDRESS"
        case fqdn = "FQDN"
        case vmManagerId = "VM_MANAGER_ID"
        case vmManagedObjectReference = "VM_MANAGED_OBJECT_REFERENCE"
        case vmName = "VM_NAME"
        case vmPath = "VM_PATH"
        case biosId = "BIOS_ID"
        case motherboardSerialNumber = "MOTHERBOARD_SERIAL_NUMBER"
        public var description: String { return self.rawValue }
    }

    public enum Status: String, CustomStringConvertible, Codable {
        case notStarted = "NOT_STARTED"
        case inProgress = "IN_PROGRESS"
        case failed = "FAILED"
        case completed = "COMPLETED"
        public var description: String { return self.rawValue }
    }

    public struct Task: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ProgressPercent", required: false, type: .integer), 
            AWSShapeMember(label: "Status", required: true, type: .enum), 
            AWSShapeMember(label: "StatusDetail", required: false, type: .string)
        ]
        /// Indication of the percentage completion of the task.
        public let progressPercent: Int32?
        /// Status of the task - Not Started, In-Progress, Complete.
        public let status: Status
        /// Details of task status as notified by a migration tool. A tool might use this field to provide clarifying information about the status that is unique to that tool or that explains an error state.
        public let statusDetail: String?

        public init(progressPercent: Int32? = nil, status: Status, statusDetail: String? = nil) {
            self.progressPercent = progressPercent
            self.status = status
            self.statusDetail = statusDetail
        }

        private enum CodingKeys: String, CodingKey {
            case progressPercent = "ProgressPercent"
            case status = "Status"
            case statusDetail = "StatusDetail"
        }
    }

}