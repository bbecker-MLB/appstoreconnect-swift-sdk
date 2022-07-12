// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.IdfaDeclarations {
	public func id(_ id: String) -> WithID {
		WithID(path: "\(path)/\(id)")
	}

	public struct WithID {
		/// Path: `/v1/idfaDeclarations/{id}`
		public let path: String

		@available(*, deprecated, message: "Deprecated")
		public func patch(_ body: AppStoreConnect_Swift_SDK.IdfaDeclarationUpdateRequest) -> Request<AppStoreConnect_Swift_SDK.IdfaDeclarationResponse> {
			.patch(path, body: body)
		}

		@available(*, deprecated, message: "Deprecated")
		public var delete: Request<Void> {
			.delete(path)
		}
	}
}