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

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/soto-project/soto/tree/main/CodeGenerator. DO NOT EDIT.

import SotoCore

// MARK: Paginators

extension Backup {
    ///  Returns a list of existing backup jobs for an authenticated account.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - eventLoop: EventLoop to run this process on
    ///   - logger: Logger used flot logging
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listBackupJobsPaginator<Result>(
        _ input: ListBackupJobsInput,
        _ initialValue: Result,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (Result, ListBackupJobsOutput, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listBackupJobs,
            tokenKey: \ListBackupJobsOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - eventLoop: EventLoop to run this process on
    ///   - logger: Logger used flot logging
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listBackupJobsPaginator(
        _ input: ListBackupJobsInput,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListBackupJobsOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listBackupJobs,
            tokenKey: \ListBackupJobsOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns metadata of your saved backup plan templates, including the template ID, name, and the creation and deletion dates.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - eventLoop: EventLoop to run this process on
    ///   - logger: Logger used flot logging
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listBackupPlanTemplatesPaginator<Result>(
        _ input: ListBackupPlanTemplatesInput,
        _ initialValue: Result,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (Result, ListBackupPlanTemplatesOutput, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listBackupPlanTemplates,
            tokenKey: \ListBackupPlanTemplatesOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - eventLoop: EventLoop to run this process on
    ///   - logger: Logger used flot logging
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listBackupPlanTemplatesPaginator(
        _ input: ListBackupPlanTemplatesInput,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListBackupPlanTemplatesOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listBackupPlanTemplates,
            tokenKey: \ListBackupPlanTemplatesOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns version metadata of your backup plans, including Amazon Resource Names (ARNs), backup plan IDs, creation and deletion dates, plan names, and version IDs.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - eventLoop: EventLoop to run this process on
    ///   - logger: Logger used flot logging
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listBackupPlanVersionsPaginator<Result>(
        _ input: ListBackupPlanVersionsInput,
        _ initialValue: Result,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (Result, ListBackupPlanVersionsOutput, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listBackupPlanVersions,
            tokenKey: \ListBackupPlanVersionsOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - eventLoop: EventLoop to run this process on
    ///   - logger: Logger used flot logging
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listBackupPlanVersionsPaginator(
        _ input: ListBackupPlanVersionsInput,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListBackupPlanVersionsOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listBackupPlanVersions,
            tokenKey: \ListBackupPlanVersionsOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns a list of existing backup plans for an authenticated account. The list is populated only if the advanced option is set for the backup plan. The list contains information such as Amazon Resource Names (ARNs), plan IDs, creation and deletion dates, version IDs, plan names, and creator request IDs.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - eventLoop: EventLoop to run this process on
    ///   - logger: Logger used flot logging
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listBackupPlansPaginator<Result>(
        _ input: ListBackupPlansInput,
        _ initialValue: Result,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (Result, ListBackupPlansOutput, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listBackupPlans,
            tokenKey: \ListBackupPlansOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - eventLoop: EventLoop to run this process on
    ///   - logger: Logger used flot logging
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listBackupPlansPaginator(
        _ input: ListBackupPlansInput,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListBackupPlansOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listBackupPlans,
            tokenKey: \ListBackupPlansOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns an array containing metadata of the resources associated with the target backup plan.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - eventLoop: EventLoop to run this process on
    ///   - logger: Logger used flot logging
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listBackupSelectionsPaginator<Result>(
        _ input: ListBackupSelectionsInput,
        _ initialValue: Result,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (Result, ListBackupSelectionsOutput, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listBackupSelections,
            tokenKey: \ListBackupSelectionsOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - eventLoop: EventLoop to run this process on
    ///   - logger: Logger used flot logging
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listBackupSelectionsPaginator(
        _ input: ListBackupSelectionsInput,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListBackupSelectionsOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listBackupSelections,
            tokenKey: \ListBackupSelectionsOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns a list of recovery point storage containers along with information about them.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - eventLoop: EventLoop to run this process on
    ///   - logger: Logger used flot logging
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listBackupVaultsPaginator<Result>(
        _ input: ListBackupVaultsInput,
        _ initialValue: Result,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (Result, ListBackupVaultsOutput, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listBackupVaults,
            tokenKey: \ListBackupVaultsOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - eventLoop: EventLoop to run this process on
    ///   - logger: Logger used flot logging
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listBackupVaultsPaginator(
        _ input: ListBackupVaultsInput,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListBackupVaultsOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listBackupVaults,
            tokenKey: \ListBackupVaultsOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns metadata about your copy jobs.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - eventLoop: EventLoop to run this process on
    ///   - logger: Logger used flot logging
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listCopyJobsPaginator<Result>(
        _ input: ListCopyJobsInput,
        _ initialValue: Result,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (Result, ListCopyJobsOutput, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listCopyJobs,
            tokenKey: \ListCopyJobsOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - eventLoop: EventLoop to run this process on
    ///   - logger: Logger used flot logging
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listCopyJobsPaginator(
        _ input: ListCopyJobsInput,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListCopyJobsOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listCopyJobs,
            tokenKey: \ListCopyJobsOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns an array of resources successfully backed up by AWS Backup, including the time the resource was saved, an Amazon Resource Name (ARN) of the resource, and a resource type.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - eventLoop: EventLoop to run this process on
    ///   - logger: Logger used flot logging
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listProtectedResourcesPaginator<Result>(
        _ input: ListProtectedResourcesInput,
        _ initialValue: Result,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (Result, ListProtectedResourcesOutput, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listProtectedResources,
            tokenKey: \ListProtectedResourcesOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - eventLoop: EventLoop to run this process on
    ///   - logger: Logger used flot logging
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listProtectedResourcesPaginator(
        _ input: ListProtectedResourcesInput,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListProtectedResourcesOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listProtectedResources,
            tokenKey: \ListProtectedResourcesOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns detailed information about the recovery points stored in a backup vault.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - eventLoop: EventLoop to run this process on
    ///   - logger: Logger used flot logging
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listRecoveryPointsByBackupVaultPaginator<Result>(
        _ input: ListRecoveryPointsByBackupVaultInput,
        _ initialValue: Result,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (Result, ListRecoveryPointsByBackupVaultOutput, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listRecoveryPointsByBackupVault,
            tokenKey: \ListRecoveryPointsByBackupVaultOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - eventLoop: EventLoop to run this process on
    ///   - logger: Logger used flot logging
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listRecoveryPointsByBackupVaultPaginator(
        _ input: ListRecoveryPointsByBackupVaultInput,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListRecoveryPointsByBackupVaultOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listRecoveryPointsByBackupVault,
            tokenKey: \ListRecoveryPointsByBackupVaultOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns detailed information about recovery points of the type specified by a resource Amazon Resource Name (ARN).
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - eventLoop: EventLoop to run this process on
    ///   - logger: Logger used flot logging
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listRecoveryPointsByResourcePaginator<Result>(
        _ input: ListRecoveryPointsByResourceInput,
        _ initialValue: Result,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (Result, ListRecoveryPointsByResourceOutput, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listRecoveryPointsByResource,
            tokenKey: \ListRecoveryPointsByResourceOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - eventLoop: EventLoop to run this process on
    ///   - logger: Logger used flot logging
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listRecoveryPointsByResourcePaginator(
        _ input: ListRecoveryPointsByResourceInput,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListRecoveryPointsByResourceOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listRecoveryPointsByResource,
            tokenKey: \ListRecoveryPointsByResourceOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns a list of jobs that AWS Backup initiated to restore a saved resource, including metadata about the recovery process.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - eventLoop: EventLoop to run this process on
    ///   - logger: Logger used flot logging
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listRestoreJobsPaginator<Result>(
        _ input: ListRestoreJobsInput,
        _ initialValue: Result,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (Result, ListRestoreJobsOutput, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listRestoreJobs,
            tokenKey: \ListRestoreJobsOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - eventLoop: EventLoop to run this process on
    ///   - logger: Logger used flot logging
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listRestoreJobsPaginator(
        _ input: ListRestoreJobsInput,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListRestoreJobsOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listRestoreJobs,
            tokenKey: \ListRestoreJobsOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns a list of key-value pairs assigned to a target recovery point, backup plan, or backup vault.   ListTags are currently only supported with Amazon EFS backups.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - eventLoop: EventLoop to run this process on
    ///   - logger: Logger used flot logging
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listTagsPaginator<Result>(
        _ input: ListTagsInput,
        _ initialValue: Result,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (Result, ListTagsOutput, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listTags,
            tokenKey: \ListTagsOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - eventLoop: EventLoop to run this process on
    ///   - logger: Logger used flot logging
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listTagsPaginator(
        _ input: ListTagsInput,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListTagsOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listTags,
            tokenKey: \ListTagsOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }
}

extension Backup.ListBackupJobsInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Backup.ListBackupJobsInput {
        return .init(
            byAccountId: self.byAccountId,
            byBackupVaultName: self.byBackupVaultName,
            byCreatedAfter: self.byCreatedAfter,
            byCreatedBefore: self.byCreatedBefore,
            byResourceArn: self.byResourceArn,
            byResourceType: self.byResourceType,
            byState: self.byState,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension Backup.ListBackupPlanTemplatesInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Backup.ListBackupPlanTemplatesInput {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension Backup.ListBackupPlanVersionsInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Backup.ListBackupPlanVersionsInput {
        return .init(
            backupPlanId: self.backupPlanId,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension Backup.ListBackupPlansInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Backup.ListBackupPlansInput {
        return .init(
            includeDeleted: self.includeDeleted,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension Backup.ListBackupSelectionsInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Backup.ListBackupSelectionsInput {
        return .init(
            backupPlanId: self.backupPlanId,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension Backup.ListBackupVaultsInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Backup.ListBackupVaultsInput {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension Backup.ListCopyJobsInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Backup.ListCopyJobsInput {
        return .init(
            byAccountId: self.byAccountId,
            byCreatedAfter: self.byCreatedAfter,
            byCreatedBefore: self.byCreatedBefore,
            byDestinationVaultArn: self.byDestinationVaultArn,
            byResourceArn: self.byResourceArn,
            byResourceType: self.byResourceType,
            byState: self.byState,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension Backup.ListProtectedResourcesInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Backup.ListProtectedResourcesInput {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension Backup.ListRecoveryPointsByBackupVaultInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Backup.ListRecoveryPointsByBackupVaultInput {
        return .init(
            backupVaultName: self.backupVaultName,
            byBackupPlanId: self.byBackupPlanId,
            byCreatedAfter: self.byCreatedAfter,
            byCreatedBefore: self.byCreatedBefore,
            byResourceArn: self.byResourceArn,
            byResourceType: self.byResourceType,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension Backup.ListRecoveryPointsByResourceInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Backup.ListRecoveryPointsByResourceInput {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            resourceArn: self.resourceArn
        )
    }
}

extension Backup.ListRestoreJobsInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Backup.ListRestoreJobsInput {
        return .init(
            byAccountId: self.byAccountId,
            byCreatedAfter: self.byCreatedAfter,
            byCreatedBefore: self.byCreatedBefore,
            byStatus: self.byStatus,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension Backup.ListTagsInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Backup.ListTagsInput {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            resourceArn: self.resourceArn
        )
    }
}