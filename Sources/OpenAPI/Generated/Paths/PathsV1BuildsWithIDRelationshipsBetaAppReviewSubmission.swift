// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.Builds.WithID.Relationships {
	public var betaAppReviewSubmission: BetaAppReviewSubmission {
		BetaAppReviewSubmission(path: path + "/betaAppReviewSubmission")
	}

	public struct BetaAppReviewSubmission {
		/// Path: `/v1/builds/{id}/relationships/betaAppReviewSubmission`
		public let path: String
	}
}
