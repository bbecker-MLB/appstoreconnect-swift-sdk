// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.AppScreenshotSets {
	public func id(_ id: String) -> WithID {
		WithID(path: "\(path)/\(id)")
	}

	public struct WithID {
		/// Path: `/v1/appScreenshotSets/{id}`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.AppScreenshotSetResponse> {
			Request(path: path, method: "GET", query: parameters?.asQuery, id: "appScreenshotSets-get_instance")
		}

		public struct GetParameters {
			public var fieldsAppScreenshotSets: [FieldsAppScreenshotSets]?
			public var include: [Include]?
			public var fieldsAppScreenshots: [FieldsAppScreenshots]?
			public var limitAppScreenshots: Int?

			public enum FieldsAppScreenshotSets: String, Codable, CaseIterable {
				case appCustomProductPageLocalization
				case appScreenshots
				case appStoreVersionExperimentTreatmentLocalization
				case appStoreVersionLocalization
				case screenshotDisplayType
			}

			public enum Include: String, Codable, CaseIterable {
				case appCustomProductPageLocalization
				case appScreenshots
				case appStoreVersionExperimentTreatmentLocalization
				case appStoreVersionLocalization
			}

			public enum FieldsAppScreenshots: String, Codable, CaseIterable {
				case appScreenshotSet
				case assetDeliveryState
				case assetToken
				case assetType
				case fileName
				case fileSize
				case imageAsset
				case sourceFileChecksum
				case uploadOperations
				case uploaded
			}

			public init(fieldsAppScreenshotSets: [FieldsAppScreenshotSets]? = nil, include: [Include]? = nil, fieldsAppScreenshots: [FieldsAppScreenshots]? = nil, limitAppScreenshots: Int? = nil) {
				self.fieldsAppScreenshotSets = fieldsAppScreenshotSets
				self.include = include
				self.fieldsAppScreenshots = fieldsAppScreenshots
				self.limitAppScreenshots = limitAppScreenshots
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(fieldsAppScreenshotSets, forKey: "fields[appScreenshotSets]")
				encoder.encode(include, forKey: "include")
				encoder.encode(fieldsAppScreenshots, forKey: "fields[appScreenshots]")
				encoder.encode(limitAppScreenshots, forKey: "limit[appScreenshots]")
				return encoder.items
			}
		}

		public var delete: Request<Void> {
			Request(path: path, method: "DELETE", id: "appScreenshotSets-delete_instance")
		}
	}
}
