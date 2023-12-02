// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.SubscriptionOfferCodes.WithID {
	public var prices: Prices {
		Prices(path: path + "/prices")
	}

	public struct Prices {
		/// Path: `/v1/subscriptionOfferCodes/{id}/prices`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.SubscriptionOfferCodePricesResponse> {
			Request(path: path, method: "GET", query: parameters?.asQuery, id: "subscriptionOfferCodes-prices-get_to_many_related")
		}

		public struct GetParameters {
			public var filterTerritory: [String]?
			public var fieldsSubscriptionPricePoints: [FieldsSubscriptionPricePoints]?
			public var fieldsTerritories: [FieldsTerritories]?
			public var fieldsSubscriptionOfferCodePrices: [FieldsSubscriptionOfferCodePrices]?
			public var limit: Int?
			public var include: [Include]?

			public enum FieldsSubscriptionPricePoints: String, Codable, CaseIterable {
				case customerPrice
				case equalizations
				case proceeds
				case proceedsYear2
				case subscription
				case territory
			}

			public enum FieldsTerritories: String, Codable, CaseIterable {
				case currency
			}

			public enum FieldsSubscriptionOfferCodePrices: String, Codable, CaseIterable {
				case subscriptionPricePoint
				case territory
			}

			public enum Include: String, Codable, CaseIterable {
				case subscriptionPricePoint
				case territory
			}

			public init(filterTerritory: [String]? = nil, fieldsSubscriptionPricePoints: [FieldsSubscriptionPricePoints]? = nil, fieldsTerritories: [FieldsTerritories]? = nil, fieldsSubscriptionOfferCodePrices: [FieldsSubscriptionOfferCodePrices]? = nil, limit: Int? = nil, include: [Include]? = nil) {
				self.filterTerritory = filterTerritory
				self.fieldsSubscriptionPricePoints = fieldsSubscriptionPricePoints
				self.fieldsTerritories = fieldsTerritories
				self.fieldsSubscriptionOfferCodePrices = fieldsSubscriptionOfferCodePrices
				self.limit = limit
				self.include = include
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(filterTerritory, forKey: "filter[territory]")
				encoder.encode(fieldsSubscriptionPricePoints, forKey: "fields[subscriptionPricePoints]")
				encoder.encode(fieldsTerritories, forKey: "fields[territories]")
				encoder.encode(fieldsSubscriptionOfferCodePrices, forKey: "fields[subscriptionOfferCodePrices]")
				encoder.encode(limit, forKey: "limit")
				encoder.encode(include, forKey: "include")
				return encoder.items
			}
		}
	}
}
