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

/// Error enum for HealthLake
public struct HealthLakeErrorType: AWSErrorType {
    enum Code: String {
        case accessDeniedException = "AccessDeniedException"
        case conflictException = "ConflictException"
        case internalServerException = "InternalServerException"
        case resourceNotFoundException = "ResourceNotFoundException"
        case throttlingException = "ThrottlingException"
        case validationException = "ValidationException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize HealthLake
    public init?(errorCode: String, context: AWSErrorContext) {
        guard let error = Code(rawValue: errorCode) else { return nil }
        self.error = error
        self.context = context
    }

    internal init(_ error: Code) {
        self.error = error
        self.context = nil
    }

    /// return error code string
    public var errorCode: String { self.error.rawValue }

    /// Access is denied. Your account is not authorized to perform this operation.
    public static var accessDeniedException: Self { .init(.accessDeniedException) }
    /// The datastore is in a transition state and the user requested action can not be performed.
    public static var conflictException: Self { .init(.conflictException) }
    /// Unknown error occurs in the service.
    public static var internalServerException: Self { .init(.internalServerException) }
    ///  The requested datastore was not found.
    public static var resourceNotFoundException: Self { .init(.resourceNotFoundException) }
    /// The user has exceeded their maximum number of allowed calls to the given API.
    public static var throttlingException: Self { .init(.throttlingException) }
    /// The user input parameter was invalid.
    public static var validationException: Self { .init(.validationException) }
}

extension HealthLakeErrorType: Equatable {
    public static func == (lhs: HealthLakeErrorType, rhs: HealthLakeErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension HealthLakeErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
