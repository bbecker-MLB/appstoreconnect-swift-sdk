// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.Apps.WithID.Relationships {
	public var preOrder: PreOrder {
		PreOrder(path: path + "/preOrder")
	}

	public struct PreOrder {
		/// Path: `/v1/apps/{id}/relationships/preOrder`
		public let path: String
	}
}
