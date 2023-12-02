// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.BuildBetaDetails.WithID.Relationships {
	public var build: Build {
		Build(path: path + "/build")
	}

	public struct Build {
		/// Path: `/v1/buildBetaDetails/{id}/relationships/build`
		public let path: String
	}
}
