// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.CiBuildActions.WithID.Relationships {
	public var testResults: TestResults {
		TestResults(path: path + "/testResults")
	}

	public struct TestResults {
		/// Path: `/v1/ciBuildActions/{id}/relationships/testResults`
		public let path: String
	}
}
