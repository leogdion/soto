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

/// Error enum for LexModelBuildingService
public struct LexModelBuildingServiceErrorType: AWSErrorType {
    enum Code: String {
        case badRequestException = "BadRequestException"
        case conflictException = "ConflictException"
        case internalFailureException = "InternalFailureException"
        case limitExceededException = "LimitExceededException"
        case notFoundException = "NotFoundException"
        case preconditionFailedException = "PreconditionFailedException"
        case resourceInUseException = "ResourceInUseException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize LexModelBuildingService
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

    /// The request is not well formed. For example, a value is invalid or a required field is missing. Check the field values, and try again.
    public static var badRequestException: Self { .init(.badRequestException) }
    ///  There was a conflict processing the request. Try your request again.
    public static var conflictException: Self { .init(.conflictException) }
    /// An internal Amazon Lex error occurred. Try your request again.
    public static var internalFailureException: Self { .init(.internalFailureException) }
    /// The request exceeded a limit. Try your request again.
    public static var limitExceededException: Self { .init(.limitExceededException) }
    /// The resource specified in the request was not found. Check the resource and try again.
    public static var notFoundException: Self { .init(.notFoundException) }
    ///  The checksum of the resource that you are trying to change does not match the checksum in the request. Check the resource's checksum and try again.
    public static var preconditionFailedException: Self { .init(.preconditionFailedException) }
    /// The resource that you are attempting to delete is referred to by another resource. Use this information to remove references to the resource that you are trying to delete. The body of the exception contains a JSON object that describes the resource.  { "resourceType": BOT | BOTALIAS | BOTCHANNEL | INTENT,   "resourceReference": {   "name": string, "version": string } }
    public static var resourceInUseException: Self { .init(.resourceInUseException) }
}

extension LexModelBuildingServiceErrorType: Equatable {
    public static func == (lhs: LexModelBuildingServiceErrorType, rhs: LexModelBuildingServiceErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension LexModelBuildingServiceErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}