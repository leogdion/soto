// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore

extension MediaTailor {

    public struct CdnConfiguration: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "AdSegmentUrlPrefix", required: false, type: .string), 
            AWSShapeMember(label: "ContentSegmentUrlPrefix", required: false, type: .string)
        ]
        /// A non-default content delivery network (CDN) to serve ad segments. By default, AWS Elemental MediaTailor uses Amazon CloudFront with default cache settings as its CDN for ad segments. To set up an alternate CDN, create a rule in your CDN for the following origin: ads.mediatailor.&lt;region>.amazonaws.com. Then specify the rule's name in this AdSegmentUrlPrefix. When AWS Elemental MediaTailor serves a manifest, it reports your CDN as the source for ad segments.
        public let adSegmentUrlPrefix: String?
        /// A content delivery network (CDN) to cache content segments, so that content requests don’t always have to go to the origin server. First, create a rule in your CDN for the content segment origin server. Then specify the rule's name in this ContentSegmentUrlPrefix. When AWS Elemental MediaTailor serves a manifest, it reports your CDN as the source for content segments.
        public let contentSegmentUrlPrefix: String?

        public init(adSegmentUrlPrefix: String? = nil, contentSegmentUrlPrefix: String? = nil) {
            self.adSegmentUrlPrefix = adSegmentUrlPrefix
            self.contentSegmentUrlPrefix = contentSegmentUrlPrefix
        }

        private enum CodingKeys: String, CodingKey {
            case adSegmentUrlPrefix = "AdSegmentUrlPrefix"
            case contentSegmentUrlPrefix = "ContentSegmentUrlPrefix"
        }
    }

    public struct DashConfiguration: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ManifestEndpointPrefix", required: false, type: .string)
        ]
        /// The URL that is used to initiate a playback session for devices that support DASH. 
        public let manifestEndpointPrefix: String?

        public init(manifestEndpointPrefix: String? = nil) {
            self.manifestEndpointPrefix = manifestEndpointPrefix
        }

        private enum CodingKeys: String, CodingKey {
            case manifestEndpointPrefix = "ManifestEndpointPrefix"
        }
    }

    public struct DeletePlaybackConfigurationRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Name", location: .uri(locationName: "Name"), required: true, type: .string)
        ]
        public let name: String

        public init(name: String) {
            self.name = name
        }

        private enum CodingKeys: String, CodingKey {
            case name = "Name"
        }
    }

    public struct GetPlaybackConfigurationRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Name", location: .uri(locationName: "Name"), required: true, type: .string)
        ]
        public let name: String

        public init(name: String) {
            self.name = name
        }

        private enum CodingKeys: String, CodingKey {
            case name = "Name"
        }
    }

    public struct GetPlaybackConfigurationResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "AdDecisionServerUrl", required: false, type: .string), 
            AWSShapeMember(label: "CdnConfiguration", required: false, type: .structure), 
            AWSShapeMember(label: "DashConfiguration", required: false, type: .structure), 
            AWSShapeMember(label: "HlsConfiguration", required: false, type: .structure), 
            AWSShapeMember(label: "Name", required: false, type: .string), 
            AWSShapeMember(label: "PlaybackEndpointPrefix", required: false, type: .string), 
            AWSShapeMember(label: "SessionInitializationEndpointPrefix", required: false, type: .string), 
            AWSShapeMember(label: "SlateAdUrl", required: false, type: .string), 
            AWSShapeMember(label: "TranscodeProfileName", required: false, type: .string), 
            AWSShapeMember(label: "VideoContentSourceUrl", required: false, type: .string)
        ]
        /// The URL for the ad decision server (ADS). This includes the specification of static parameters and placeholders for dynamic parameters. AWS Elemental MediaTailor substitutes player-specific and session-specific parameters as needed when calling the ADS. Alternately, for testing, you can provide a static VAST URL. The maximum length is 25000 characters.
        public let adDecisionServerUrl: String?
        /// The configuration for using a content delivery network (CDN), like Amazon CloudFront, for content and ad segment management. 
        public let cdnConfiguration: CdnConfiguration?
        /// The configuration object for dash content. 
        public let dashConfiguration: DashConfiguration?
        /// The configuration for HLS content. 
        public let hlsConfiguration: HlsConfiguration?
        /// The identifier for the configuration.
        public let name: String?
        /// The URL that the player accesses to get a manifest from AWS Elemental MediaTailor. This session will use server-side reporting. 
        public let playbackEndpointPrefix: String?
        /// The URL that the player uses to initialize a session that uses client-side reporting. 
        public let sessionInitializationEndpointPrefix: String?
        /// URL for a high-quality video asset to transcode and use to fill in time that's not used by ads. AWS Elemental MediaTailor shows the slate to fill in gaps in media content. Configuring the slate is optional for non-VPAID configurations. For VPAID, the slate is required because AWS Elemental MediaTailor provides it in the slots designated for dynamic ad content. The slate must be a high-quality asset that contains both audio and video. 
        public let slateAdUrl: String?
        /// Associate this playbackConfiguration with a custom transcode profile, overriding MediaTailor's dynamic transcoding defaults. Do not include this field if you have not setup custom profiles with the MediaTailor service team. 
        public let transcodeProfileName: String?
        /// The URL prefix for the master playlist for the stream, minus the asset ID. The maximum length is 512 characters.
        public let videoContentSourceUrl: String?

        public init(adDecisionServerUrl: String? = nil, cdnConfiguration: CdnConfiguration? = nil, dashConfiguration: DashConfiguration? = nil, hlsConfiguration: HlsConfiguration? = nil, name: String? = nil, playbackEndpointPrefix: String? = nil, sessionInitializationEndpointPrefix: String? = nil, slateAdUrl: String? = nil, transcodeProfileName: String? = nil, videoContentSourceUrl: String? = nil) {
            self.adDecisionServerUrl = adDecisionServerUrl
            self.cdnConfiguration = cdnConfiguration
            self.dashConfiguration = dashConfiguration
            self.hlsConfiguration = hlsConfiguration
            self.name = name
            self.playbackEndpointPrefix = playbackEndpointPrefix
            self.sessionInitializationEndpointPrefix = sessionInitializationEndpointPrefix
            self.slateAdUrl = slateAdUrl
            self.transcodeProfileName = transcodeProfileName
            self.videoContentSourceUrl = videoContentSourceUrl
        }

        private enum CodingKeys: String, CodingKey {
            case adDecisionServerUrl = "AdDecisionServerUrl"
            case cdnConfiguration = "CdnConfiguration"
            case dashConfiguration = "DashConfiguration"
            case hlsConfiguration = "HlsConfiguration"
            case name = "Name"
            case playbackEndpointPrefix = "PlaybackEndpointPrefix"
            case sessionInitializationEndpointPrefix = "SessionInitializationEndpointPrefix"
            case slateAdUrl = "SlateAdUrl"
            case transcodeProfileName = "TranscodeProfileName"
            case videoContentSourceUrl = "VideoContentSourceUrl"
        }
    }

    public struct HlsConfiguration: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ManifestEndpointPrefix", required: false, type: .string)
        ]
        /// The URL that is used to initiate a playback session for devices that support Apple HLS. The session uses server-side reporting.
        public let manifestEndpointPrefix: String?

        public init(manifestEndpointPrefix: String? = nil) {
            self.manifestEndpointPrefix = manifestEndpointPrefix
        }

        private enum CodingKeys: String, CodingKey {
            case manifestEndpointPrefix = "ManifestEndpointPrefix"
        }
    }

    public struct ListPlaybackConfigurationsRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "MaxResults", location: .querystring(locationName: "MaxResults"), required: false, type: .integer), 
            AWSShapeMember(label: "NextToken", location: .querystring(locationName: "NextToken"), required: false, type: .string)
        ]
        public let maxResults: Int32?
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

    public struct ListPlaybackConfigurationsResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Items", required: false, type: .list), 
            AWSShapeMember(label: "NextToken", required: false, type: .string)
        ]
        /// Array of playback configurations. This may be all of the available configurations or a subset, depending on the settings you provide and on the total number of configurations stored. 
        public let items: [PlaybackConfiguration]?
        /// Pagination token returned by the GET list request when results overrun the meximum allowed. Use the token to fetch the next page of results.
        public let nextToken: String?

        public init(items: [PlaybackConfiguration]? = nil, nextToken: String? = nil) {
            self.items = items
            self.nextToken = nextToken
        }

        private enum CodingKeys: String, CodingKey {
            case items = "Items"
            case nextToken = "NextToken"
        }
    }

    public struct PlaybackConfiguration: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "AdDecisionServerUrl", required: false, type: .string), 
            AWSShapeMember(label: "CdnConfiguration", required: false, type: .structure), 
            AWSShapeMember(label: "Name", required: false, type: .string), 
            AWSShapeMember(label: "SlateAdUrl", required: false, type: .string), 
            AWSShapeMember(label: "VideoContentSourceUrl", required: false, type: .string)
        ]
        public let adDecisionServerUrl: String?
        public let cdnConfiguration: CdnConfiguration?
        public let name: String?
        public let slateAdUrl: String?
        public let videoContentSourceUrl: String?

        public init(adDecisionServerUrl: String? = nil, cdnConfiguration: CdnConfiguration? = nil, name: String? = nil, slateAdUrl: String? = nil, videoContentSourceUrl: String? = nil) {
            self.adDecisionServerUrl = adDecisionServerUrl
            self.cdnConfiguration = cdnConfiguration
            self.name = name
            self.slateAdUrl = slateAdUrl
            self.videoContentSourceUrl = videoContentSourceUrl
        }

        private enum CodingKeys: String, CodingKey {
            case adDecisionServerUrl = "AdDecisionServerUrl"
            case cdnConfiguration = "CdnConfiguration"
            case name = "Name"
            case slateAdUrl = "SlateAdUrl"
            case videoContentSourceUrl = "VideoContentSourceUrl"
        }
    }

    public struct PutPlaybackConfigurationRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "AdDecisionServerUrl", required: false, type: .string), 
            AWSShapeMember(label: "CdnConfiguration", required: false, type: .structure), 
            AWSShapeMember(label: "Name", required: false, type: .string), 
            AWSShapeMember(label: "SlateAdUrl", required: false, type: .string), 
            AWSShapeMember(label: "TranscodeProfileName", required: false, type: .string), 
            AWSShapeMember(label: "VideoContentSourceUrl", required: false, type: .string)
        ]
        /// The URL for the ad decision server (ADS). This includes the specification of static parameters and placeholders for dynamic parameters. AWS Elemental MediaTailor substitutes player-specific and session-specific parameters as needed when calling the ADS. Alternately, for testing you can provide a static VAST URL. The maximum length is 25000 characters.
        public let adDecisionServerUrl: String?
        /// The configuration for using a content delivery network (CDN), like Amazon CloudFront, for content and ad segment management. 
        public let cdnConfiguration: CdnConfiguration?
        /// The identifier for the configuration.
        public let name: String?
        /// The URL for a high-quality video asset to transcode and use to fill in time that's not used by ads. AWS Elemental MediaTailor shows the slate to fill in gaps in media content. Configuring the slate is optional for non-VPAID configurations. For VPAID, the slate is required because AWS Elemental MediaTailor provides it in the slots that are designated for dynamic ad content. The slate must be a high-quality asset that contains both audio and video. 
        public let slateAdUrl: String?
        /// Associate this playbackConfiguration with a custom transcode profile, overriding MediaTailor's dynamic transcoding defaults. Do not include this field if you have not setup custom profiles with the MediaTailor service team. 
        public let transcodeProfileName: String?
        /// The URL prefix for the master playlist for the stream, minus the asset ID. The maximum length is 512 characters.
        public let videoContentSourceUrl: String?

        public init(adDecisionServerUrl: String? = nil, cdnConfiguration: CdnConfiguration? = nil, name: String? = nil, slateAdUrl: String? = nil, transcodeProfileName: String? = nil, videoContentSourceUrl: String? = nil) {
            self.adDecisionServerUrl = adDecisionServerUrl
            self.cdnConfiguration = cdnConfiguration
            self.name = name
            self.slateAdUrl = slateAdUrl
            self.transcodeProfileName = transcodeProfileName
            self.videoContentSourceUrl = videoContentSourceUrl
        }

        private enum CodingKeys: String, CodingKey {
            case adDecisionServerUrl = "AdDecisionServerUrl"
            case cdnConfiguration = "CdnConfiguration"
            case name = "Name"
            case slateAdUrl = "SlateAdUrl"
            case transcodeProfileName = "TranscodeProfileName"
            case videoContentSourceUrl = "VideoContentSourceUrl"
        }
    }

    public struct PutPlaybackConfigurationResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "AdDecisionServerUrl", required: false, type: .string), 
            AWSShapeMember(label: "CdnConfiguration", required: false, type: .structure), 
            AWSShapeMember(label: "DashConfiguration", required: false, type: .structure), 
            AWSShapeMember(label: "HlsConfiguration", required: false, type: .structure), 
            AWSShapeMember(label: "Name", required: false, type: .string), 
            AWSShapeMember(label: "PlaybackEndpointPrefix", required: false, type: .string), 
            AWSShapeMember(label: "SessionInitializationEndpointPrefix", required: false, type: .string), 
            AWSShapeMember(label: "SlateAdUrl", required: false, type: .string), 
            AWSShapeMember(label: "TranscodeProfileName", required: false, type: .string), 
            AWSShapeMember(label: "VideoContentSourceUrl", required: false, type: .string)
        ]
        public let adDecisionServerUrl: String?
        public let cdnConfiguration: CdnConfiguration?
        public let dashConfiguration: DashConfiguration?
        public let hlsConfiguration: HlsConfiguration?
        public let name: String?
        public let playbackEndpointPrefix: String?
        public let sessionInitializationEndpointPrefix: String?
        public let slateAdUrl: String?
        public let transcodeProfileName: String?
        public let videoContentSourceUrl: String?

        public init(adDecisionServerUrl: String? = nil, cdnConfiguration: CdnConfiguration? = nil, dashConfiguration: DashConfiguration? = nil, hlsConfiguration: HlsConfiguration? = nil, name: String? = nil, playbackEndpointPrefix: String? = nil, sessionInitializationEndpointPrefix: String? = nil, slateAdUrl: String? = nil, transcodeProfileName: String? = nil, videoContentSourceUrl: String? = nil) {
            self.adDecisionServerUrl = adDecisionServerUrl
            self.cdnConfiguration = cdnConfiguration
            self.dashConfiguration = dashConfiguration
            self.hlsConfiguration = hlsConfiguration
            self.name = name
            self.playbackEndpointPrefix = playbackEndpointPrefix
            self.sessionInitializationEndpointPrefix = sessionInitializationEndpointPrefix
            self.slateAdUrl = slateAdUrl
            self.transcodeProfileName = transcodeProfileName
            self.videoContentSourceUrl = videoContentSourceUrl
        }

        private enum CodingKeys: String, CodingKey {
            case adDecisionServerUrl = "AdDecisionServerUrl"
            case cdnConfiguration = "CdnConfiguration"
            case dashConfiguration = "DashConfiguration"
            case hlsConfiguration = "HlsConfiguration"
            case name = "Name"
            case playbackEndpointPrefix = "PlaybackEndpointPrefix"
            case sessionInitializationEndpointPrefix = "SessionInitializationEndpointPrefix"
            case slateAdUrl = "SlateAdUrl"
            case transcodeProfileName = "TranscodeProfileName"
            case videoContentSourceUrl = "VideoContentSourceUrl"
        }
    }

}