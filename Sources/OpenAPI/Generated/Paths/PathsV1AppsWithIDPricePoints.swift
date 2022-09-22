// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.Apps.WithID {
	public var pricePoints: PricePoints {
		PricePoints(path: path + "/pricePoints")
	}

	public struct PricePoints {
		/// Path: `/v1/apps/{id}/pricePoints`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.AppPricePointsV2Response> {
			.get(path, query: parameters?.asQuery)
		}

		public struct GetParameters {
			public var filterPriceTier: [String]?
			public var filterTerritory: [String]?
			public var fieldsAppPriceTiers: [FieldsAppPriceTiers]?
			public var fieldsAppPricePoints: [FieldsAppPricePoints]?
			public var fieldsApps: [FieldsApps]?
			public var fieldsTerritories: [FieldsTerritories]?
			public var limit: Int?
			public var include: [Include]?

			public enum FieldsAppPriceTiers: String, Codable, CaseIterable {
				case pricePoints
			}

			public enum FieldsAppPricePoints: String, Codable, CaseIterable {
				case app
				case customerPrice
				case priceTier
				case proceeds
				case territory
			}

			public enum FieldsApps: String, Codable, CaseIterable {
				case appClips
				case appCustomProductPages
				case appEvents
				case appInfos
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
				case priceTier
				case territory
			}

			public init(filterPriceTier: [String]? = nil, filterTerritory: [String]? = nil, fieldsAppPriceTiers: [FieldsAppPriceTiers]? = nil, fieldsAppPricePoints: [FieldsAppPricePoints]? = nil, fieldsApps: [FieldsApps]? = nil, fieldsTerritories: [FieldsTerritories]? = nil, limit: Int? = nil, include: [Include]? = nil) {
				self.filterPriceTier = filterPriceTier
				self.filterTerritory = filterTerritory
				self.fieldsAppPriceTiers = fieldsAppPriceTiers
				self.fieldsAppPricePoints = fieldsAppPricePoints
				self.fieldsApps = fieldsApps
				self.fieldsTerritories = fieldsTerritories
				self.limit = limit
				self.include = include
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(filterPriceTier, forKey: "filter[priceTier]")
				encoder.encode(filterTerritory, forKey: "filter[territory]")
				encoder.encode(fieldsAppPriceTiers, forKey: "fields[appPriceTiers]")
				encoder.encode(fieldsAppPricePoints, forKey: "fields[appPricePoints]")
				encoder.encode(fieldsApps, forKey: "fields[apps]")
				encoder.encode(fieldsTerritories, forKey: "fields[territories]")
				encoder.encode(limit, forKey: "limit")
				encoder.encode(include, forKey: "include")
				return encoder.items
			}
		}
	}
}