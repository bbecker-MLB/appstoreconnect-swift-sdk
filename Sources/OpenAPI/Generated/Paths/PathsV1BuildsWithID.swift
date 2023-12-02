// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.Builds {
	public func id(_ id: String) -> WithID {
		WithID(path: "\(path)/\(id)")
	}

	public struct WithID {
		/// Path: `/v1/builds/{id}`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.BuildResponse> {
			Request(path: path, method: "GET", query: parameters?.asQuery, id: "builds-get_instance")
		}

		public struct GetParameters {
			public var fieldsBuilds: [FieldsBuilds]?
			public var include: [Include]?
			public var fieldsDiagnosticSignatures: [FieldsDiagnosticSignatures]?
			public var fieldsBuildIcons: [FieldsBuildIcons]?
			public var fieldsBuildBetaDetails: [FieldsBuildBetaDetails]?
			public var fieldsBetaAppReviewSubmissions: [FieldsBetaAppReviewSubmissions]?
			public var fieldsBetaTesters: [FieldsBetaTesters]?
			public var fieldsAppStoreVersions: [FieldsAppStoreVersions]?
			public var fieldsBetaBuildLocalizations: [FieldsBetaBuildLocalizations]?
			public var fieldsPreReleaseVersions: [FieldsPreReleaseVersions]?
			public var fieldsAppEncryptionDeclarations: [FieldsAppEncryptionDeclarations]?
			public var fieldsApps: [FieldsApps]?
			public var fieldsPerfPowerMetrics: [FieldsPerfPowerMetrics]?
			public var limitBetaBuildLocalizations: Int?
			public var limitBetaGroups: Int?
			public var limitBuildBundles: Int?
			public var limitIcons: Int?
			public var limitIndividualTesters: Int?

			public enum FieldsBuilds: String, Codable, CaseIterable {
				case app
				case appEncryptionDeclaration
				case appStoreVersion
				case betaAppReviewSubmission
				case betaBuildLocalizations
				case betaGroups
				case buildAudienceType
				case buildBetaDetail
				case buildBundles
				case computedMinMacOsVersion
				case diagnosticSignatures
				case expirationDate
				case expired
				case iconAssetToken
				case icons
				case individualTesters
				case lsMinimumSystemVersion
				case minOsVersion
				case perfPowerMetrics
				case preReleaseVersion
				case processingState
				case uploadedDate
				case usesNonExemptEncryption
				case version
			}

			public enum Include: String, Codable, CaseIterable {
				case app
				case appEncryptionDeclaration
				case appStoreVersion
				case betaAppReviewSubmission
				case betaBuildLocalizations
				case betaGroups
				case buildBetaDetail
				case buildBundles
				case icons
				case individualTesters
				case preReleaseVersion
			}

			public enum FieldsDiagnosticSignatures: String, Codable, CaseIterable {
				case diagnosticType
				case logs
				case signature
				case weight
			}

			public enum FieldsBuildIcons: String, Codable, CaseIterable {
				case iconAsset
				case iconType
				case name
			}

			public enum FieldsBuildBetaDetails: String, Codable, CaseIterable {
				case autoNotifyEnabled
				case build
				case externalBuildState
				case internalBuildState
			}

			public enum FieldsBetaAppReviewSubmissions: String, Codable, CaseIterable {
				case betaReviewState
				case build
				case submittedDate
			}

			public enum FieldsBetaTesters: String, Codable, CaseIterable {
				case apps
				case betaGroups
				case builds
				case email
				case firstName
				case inviteType
				case lastName
			}

			public enum FieldsAppStoreVersions: String, Codable, CaseIterable {
				case ageRatingDeclaration
				case app
				case appClipDefaultExperience
				case appStoreReviewDetail
				case appStoreState
				case appStoreVersionExperiments
				case appStoreVersionExperimentsV2
				case appStoreVersionLocalizations
				case appStoreVersionPhasedRelease
				case appStoreVersionSubmission
				case build
				case copyright
				case createdDate
				case customerReviews
				case downloadable
				case earliestReleaseDate
				case platform
				case releaseType
				case routingAppCoverage
				case versionString
			}

			public enum FieldsBetaBuildLocalizations: String, Codable, CaseIterable {
				case build
				case locale
				case whatsNew
			}

			public enum FieldsPreReleaseVersions: String, Codable, CaseIterable {
				case app
				case builds
				case platform
				case version
			}

			public enum FieldsAppEncryptionDeclarations: String, Codable, CaseIterable {
				case app
				case appDescription
				case appEncryptionDeclarationDocument
				case appEncryptionDeclarationState
				case availableOnFrenchStore
				case builds
				case codeValue
				case containsProprietaryCryptography
				case containsThirdPartyCryptography
				case createdDate
				case documentName
				case documentType
				case documentURL = "documentUrl"
				case exempt
				case platform
				case uploadedDate
				case usesEncryption
			}

			public enum FieldsApps: String, Codable, CaseIterable {
				case appAvailability
				case appClips
				case appCustomProductPages
				case appEncryptionDeclarations
				case appEvents
				case appInfos
				case appPricePoints
				case appPriceSchedule
				case appStoreVersionExperimentsV2
				case appStoreVersions
				case availableInNewTerritories
				case availableTerritories
				case betaAppLocalizations
				case betaAppReviewDetail
				case betaGroups
				case betaLicenseAgreement
				case betaTesters
				case builds
				case bundleID = "bundleId"
				case ciProduct
				case contentRightsDeclaration
				case customerReviews
				case endUserLicenseAgreement
				case gameCenterDetail
				case gameCenterEnabledVersions
				case inAppPurchases
				case inAppPurchasesV2
				case isOrEverWasMadeForKids
				case name
				case perfPowerMetrics
				case preOrder
				case preReleaseVersions
				case pricePoints
				case prices
				case primaryLocale
				case promotedPurchases
				case reviewSubmissions
				case sku
				case subscriptionGracePeriod
				case subscriptionGroups
				case subscriptionStatusURL = "subscriptionStatusUrl"
				case subscriptionStatusURLForSandbox = "subscriptionStatusUrlForSandbox"
				case subscriptionStatusURLVersion = "subscriptionStatusUrlVersion"
				case subscriptionStatusURLVersionForSandbox = "subscriptionStatusUrlVersionForSandbox"
			}

			public enum FieldsPerfPowerMetrics: String, Codable, CaseIterable {
				case deviceType
				case metricType
				case platform
			}

			public init(fieldsBuilds: [FieldsBuilds]? = nil, include: [Include]? = nil, fieldsDiagnosticSignatures: [FieldsDiagnosticSignatures]? = nil, fieldsBuildIcons: [FieldsBuildIcons]? = nil, fieldsBuildBetaDetails: [FieldsBuildBetaDetails]? = nil, fieldsBetaAppReviewSubmissions: [FieldsBetaAppReviewSubmissions]? = nil, fieldsBetaTesters: [FieldsBetaTesters]? = nil, fieldsAppStoreVersions: [FieldsAppStoreVersions]? = nil, fieldsBetaBuildLocalizations: [FieldsBetaBuildLocalizations]? = nil, fieldsPreReleaseVersions: [FieldsPreReleaseVersions]? = nil, fieldsAppEncryptionDeclarations: [FieldsAppEncryptionDeclarations]? = nil, fieldsApps: [FieldsApps]? = nil, fieldsPerfPowerMetrics: [FieldsPerfPowerMetrics]? = nil, limitBetaBuildLocalizations: Int? = nil, limitBetaGroups: Int? = nil, limitBuildBundles: Int? = nil, limitIcons: Int? = nil, limitIndividualTesters: Int? = nil) {
				self.fieldsBuilds = fieldsBuilds
				self.include = include
				self.fieldsDiagnosticSignatures = fieldsDiagnosticSignatures
				self.fieldsBuildIcons = fieldsBuildIcons
				self.fieldsBuildBetaDetails = fieldsBuildBetaDetails
				self.fieldsBetaAppReviewSubmissions = fieldsBetaAppReviewSubmissions
				self.fieldsBetaTesters = fieldsBetaTesters
				self.fieldsAppStoreVersions = fieldsAppStoreVersions
				self.fieldsBetaBuildLocalizations = fieldsBetaBuildLocalizations
				self.fieldsPreReleaseVersions = fieldsPreReleaseVersions
				self.fieldsAppEncryptionDeclarations = fieldsAppEncryptionDeclarations
				self.fieldsApps = fieldsApps
				self.fieldsPerfPowerMetrics = fieldsPerfPowerMetrics
				self.limitBetaBuildLocalizations = limitBetaBuildLocalizations
				self.limitBetaGroups = limitBetaGroups
				self.limitBuildBundles = limitBuildBundles
				self.limitIcons = limitIcons
				self.limitIndividualTesters = limitIndividualTesters
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(fieldsBuilds, forKey: "fields[builds]")
				encoder.encode(include, forKey: "include")
				encoder.encode(fieldsDiagnosticSignatures, forKey: "fields[diagnosticSignatures]")
				encoder.encode(fieldsBuildIcons, forKey: "fields[buildIcons]")
				encoder.encode(fieldsBuildBetaDetails, forKey: "fields[buildBetaDetails]")
				encoder.encode(fieldsBetaAppReviewSubmissions, forKey: "fields[betaAppReviewSubmissions]")
				encoder.encode(fieldsBetaTesters, forKey: "fields[betaTesters]")
				encoder.encode(fieldsAppStoreVersions, forKey: "fields[appStoreVersions]")
				encoder.encode(fieldsBetaBuildLocalizations, forKey: "fields[betaBuildLocalizations]")
				encoder.encode(fieldsPreReleaseVersions, forKey: "fields[preReleaseVersions]")
				encoder.encode(fieldsAppEncryptionDeclarations, forKey: "fields[appEncryptionDeclarations]")
				encoder.encode(fieldsApps, forKey: "fields[apps]")
				encoder.encode(fieldsPerfPowerMetrics, forKey: "fields[perfPowerMetrics]")
				encoder.encode(limitBetaBuildLocalizations, forKey: "limit[betaBuildLocalizations]")
				encoder.encode(limitBetaGroups, forKey: "limit[betaGroups]")
				encoder.encode(limitBuildBundles, forKey: "limit[buildBundles]")
				encoder.encode(limitIcons, forKey: "limit[icons]")
				encoder.encode(limitIndividualTesters, forKey: "limit[individualTesters]")
				return encoder.items
			}
		}

		public func patch(_ body: AppStoreConnect_Swift_SDK.BuildUpdateRequest) -> Request<AppStoreConnect_Swift_SDK.BuildResponse> {
			Request(path: path, method: "PATCH", body: body, id: "builds-update_instance")
		}
	}
}
