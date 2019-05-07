// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for CloudSearch
public enum CloudSearchErrorType: AWSErrorType {
    case baseException(message: String?)
    case disabledOperationException(message: String?)
    case internalException(message: String?)
    case invalidTypeException(message: String?)
    case limitExceededException(message: String?)
    case resourceNotFoundException(message: String?)
}

extension CloudSearchErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.index(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "BaseException":
            self = .baseException(message: message)
        case "DisabledOperationException":
            self = .disabledOperationException(message: message)
        case "InternalException":
            self = .internalException(message: message)
        case "InvalidTypeException":
            self = .invalidTypeException(message: message)
        case "LimitExceededException":
            self = .limitExceededException(message: message)
        case "ResourceNotFoundException":
            self = .resourceNotFoundException(message: message)
        default:
            return nil
        }
    }
}