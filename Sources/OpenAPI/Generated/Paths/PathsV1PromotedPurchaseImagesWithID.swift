// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.PromotedPurchaseImages {
	public func id(_ id: String) -> WithID {
		WithID(path: "\(path)/\(id)")
	}

	public struct WithID {
		/// Path: `/v1/promotedPurchaseImages/{id}`
		public let path: String

		public func get(fieldsPromotedPurchaseImages: [FieldsPromotedPurchaseImages]? = nil, include: [Include]? = nil) -> Request<AppStoreConnect_Swift_SDK.PromotedPurchaseImageResponse> {
			Request(path: path, method: "GET", query: makeGetQuery(fieldsPromotedPurchaseImages, include), id: "promotedPurchaseImages-get_instance")
		}

		private func makeGetQuery(_ fieldsPromotedPurchaseImages: [FieldsPromotedPurchaseImages]?, _ include: [Include]?) -> [(String, String?)] {
			let encoder = URLQueryEncoder(explode: false)
			encoder.encode(fieldsPromotedPurchaseImages, forKey: "fields[promotedPurchaseImages]")
			encoder.encode(include, forKey: "include")
			return encoder.items
		}

		public enum FieldsPromotedPurchaseImages: String, Codable, CaseIterable {
			case assetToken
			case assetType
			case fileName
			case fileSize
			case imageAsset
			case promotedPurchase
			case sourceFileChecksum
			case state
			case uploadOperations
			case uploaded
		}

		public enum Include: String, Codable, CaseIterable {
			case promotedPurchase
		}

		public func patch(_ body: AppStoreConnect_Swift_SDK.PromotedPurchaseImageUpdateRequest) -> Request<AppStoreConnect_Swift_SDK.PromotedPurchaseImageResponse> {
			Request(path: path, method: "PATCH", body: body, id: "promotedPurchaseImages-update_instance")
		}

		public var delete: Request<Void> {
			Request(path: path, method: "DELETE", id: "promotedPurchaseImages-delete_instance")
		}
	}
}
