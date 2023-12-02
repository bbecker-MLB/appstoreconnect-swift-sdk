// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V3.AppPricePoints {
	public func id(_ id: String) -> WithID {
		WithID(path: "\(path)/\(id)")
	}

	public struct WithID {
		/// Path: `/v3/appPricePoints/{id}`
		public let path: String

		public func get(fieldsAppPricePoints: [FieldsAppPricePoints]? = nil, include: [Include]? = nil) -> Request<AppStoreConnect_Swift_SDK.AppPricePointV3Response> {
			Request(path: path, method: "GET", query: makeGetQuery(fieldsAppPricePoints, include), id: "appPricePointsV3-get_instance")
		}

		private func makeGetQuery(_ fieldsAppPricePoints: [FieldsAppPricePoints]?, _ include: [Include]?) -> [(String, String?)] {
			let encoder = URLQueryEncoder(explode: false)
			encoder.encode(fieldsAppPricePoints, forKey: "fields[appPricePoints]")
			encoder.encode(include, forKey: "include")
			return encoder.items
		}

		public enum FieldsAppPricePoints: String, Codable, CaseIterable {
			case app
			case customerPrice
			case equalizations
			case proceeds
			case territory
		}

		public enum Include: String, Codable, CaseIterable {
			case app
			case territory
		}
	}
}
