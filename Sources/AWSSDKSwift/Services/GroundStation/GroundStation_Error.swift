// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for GroundStation
public enum GroundStationErrorType: AWSErrorType {
    case dependencyException(message: String?)
    case invalidParameterException(message: String?)
    case resourceNotFoundException(message: String?)
}

extension GroundStationErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.index(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "DependencyException":
            self = .dependencyException(message: message)
        case "InvalidParameterException":
            self = .invalidParameterException(message: message)
        case "ResourceNotFoundException":
            self = .resourceNotFoundException(message: message)
        default:
            return nil
        }
    }
}