// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for LicenseManager
public enum LicenseManagerErrorType: AWSErrorType {
    case accessDeniedException(message: String?)
    case authorizationException(message: String?)
    case failedDependencyException(message: String?)
    case filterLimitExceededException(message: String?)
    case invalidParameterValueException(message: String?)
    case invalidResourceStateException(message: String?)
    case licenseUsageException(message: String?)
    case rateLimitExceededException(message: String?)
    case resourceLimitExceededException(message: String?)
    case serverInternalException(message: String?)
}

extension LicenseManagerErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.index(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "AccessDeniedException":
            self = .accessDeniedException(message: message)
        case "AuthorizationException":
            self = .authorizationException(message: message)
        case "FailedDependencyException":
            self = .failedDependencyException(message: message)
        case "FilterLimitExceededException":
            self = .filterLimitExceededException(message: message)
        case "InvalidParameterValueException":
            self = .invalidParameterValueException(message: message)
        case "InvalidResourceStateException":
            self = .invalidResourceStateException(message: message)
        case "LicenseUsageException":
            self = .licenseUsageException(message: message)
        case "RateLimitExceededException":
            self = .rateLimitExceededException(message: message)
        case "ResourceLimitExceededException":
            self = .resourceLimitExceededException(message: message)
        case "ServerInternalException":
            self = .serverInternalException(message: message)
        default:
            return nil
        }
    }
}