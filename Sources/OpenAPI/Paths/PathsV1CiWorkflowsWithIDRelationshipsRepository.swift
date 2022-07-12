// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.CiWorkflows.WithID.Relationships {
	public var repository: Repository {
		Repository(path: path + "/repository")
	}

	public struct Repository {
		/// Path: `/v1/ciWorkflows/{id}/relationships/repository`
		public let path: String
	}
}