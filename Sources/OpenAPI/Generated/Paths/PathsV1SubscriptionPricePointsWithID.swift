// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.SubscriptionPricePoints {
	public func id(_ id: String) -> WithID {
		WithID(path: "\(path)/\(id)")
	}

	public struct WithID {
		/// Path: `/v1/subscriptionPricePoints/{id}`
		public let path: String

		public func get(fieldsSubscriptionPricePoints: [FieldsSubscriptionPricePoints]? = nil, include: [Include]? = nil) -> Request<AppStoreConnect_Swift_SDK.SubscriptionPricePointResponse> {
			Request(path: path, method: "GET", query: makeGetQuery(fieldsSubscriptionPricePoints, include), id: "subscriptionPricePoints-get_instance")
		}

		private func makeGetQuery(_ fieldsSubscriptionPricePoints: [FieldsSubscriptionPricePoints]?, _ include: [Include]?) -> [(String, String?)] {
			let encoder = URLQueryEncoder(explode: false)
			encoder.encode(fieldsSubscriptionPricePoints, forKey: "fields[subscriptionPricePoints]")
			encoder.encode(include, forKey: "include")
			return encoder.items
		}

		public enum FieldsSubscriptionPricePoints: String, Codable, CaseIterable {
			case customerPrice
			case equalizations
			case proceeds
			case proceedsYear2
			case subscription
			case territory
		}

		public enum Include: String, Codable, CaseIterable {
			case territory
		}
	}
}
