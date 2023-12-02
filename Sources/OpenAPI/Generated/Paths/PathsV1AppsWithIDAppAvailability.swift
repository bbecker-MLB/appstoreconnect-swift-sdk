// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.Apps.WithID {
	public var appAvailability: AppAvailability {
		AppAvailability(path: path + "/appAvailability")
	}

	public struct AppAvailability {
		/// Path: `/v1/apps/{id}/appAvailability`
		public let path: String

		@available(*, deprecated, message: "Deprecated")
		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.AppAvailabilityResponse> {
			Request(path: path, method: "GET", query: parameters?.asQuery, id: "apps-appAvailability-get_to_one_related")
		}

		public struct GetParameters {
			public var fieldsAppAvailabilities: [FieldsAppAvailabilities]?
			public var fieldsApps: [FieldsApps]?
			public var fieldsTerritories: [FieldsTerritories]?
			public var limitAvailableTerritories: Int?
			public var include: [Include]?

			public enum FieldsAppAvailabilities: String, Codable, CaseIterable {
				case app
				case availableInNewTerritories
				case availableTerritories
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

			public enum FieldsTerritories: String, Codable, CaseIterable {
				case currency
			}

			public enum Include: String, Codable, CaseIterable {
				case app
				case availableTerritories
			}

			public init(fieldsAppAvailabilities: [FieldsAppAvailabilities]? = nil, fieldsApps: [FieldsApps]? = nil, fieldsTerritories: [FieldsTerritories]? = nil, limitAvailableTerritories: Int? = nil, include: [Include]? = nil) {
				self.fieldsAppAvailabilities = fieldsAppAvailabilities
				self.fieldsApps = fieldsApps
				self.fieldsTerritories = fieldsTerritories
				self.limitAvailableTerritories = limitAvailableTerritories
				self.include = include
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(fieldsAppAvailabilities, forKey: "fields[appAvailabilities]")
				encoder.encode(fieldsApps, forKey: "fields[apps]")
				encoder.encode(fieldsTerritories, forKey: "fields[territories]")
				encoder.encode(limitAvailableTerritories, forKey: "limit[availableTerritories]")
				encoder.encode(include, forKey: "include")
				return encoder.items
			}
		}
	}
}
