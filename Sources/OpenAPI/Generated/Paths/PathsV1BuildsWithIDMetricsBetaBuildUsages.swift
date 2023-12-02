// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.Builds.WithID.Metrics {
	public var betaBuildUsages: BetaBuildUsages {
		BetaBuildUsages(path: path + "/betaBuildUsages")
	}

	public struct BetaBuildUsages {
		/// Path: `/v1/builds/{id}/metrics/betaBuildUsages`
		public let path: String

		public func get(limit: Int? = nil) -> Request<AppStoreConnect_Swift_SDK.BetaBuildUsagesV1MetricResponse> {
			Request(path: path, method: "GET", query: makeGetQuery(limit), id: "builds-betaBuildUsages-get_metrics")
		}

		private func makeGetQuery(_ limit: Int?) -> [(String, String?)] {
			let encoder = URLQueryEncoder()
			encoder.encode(limit, forKey: "limit")
			return encoder.items
		}
	}
}
