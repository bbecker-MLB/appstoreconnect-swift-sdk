// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1 {
	public var appScreenshotSets: AppScreenshotSets {
		AppScreenshotSets(path: path + "/appScreenshotSets")
	}

	public struct AppScreenshotSets {
		/// Path: `/v1/appScreenshotSets`
		public let path: String

		public func post(_ body: AppStoreConnect_Swift_SDK.AppScreenshotSetCreateRequest) -> Request<AppStoreConnect_Swift_SDK.AppScreenshotSetResponse> {
			.post(path, body: body)
		}
	}
}