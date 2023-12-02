// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct AppScreenshot: Codable, Identifiable {
	public var type: `Type`
	public var id: String
	public var attributes: Attributes?
	public var relationships: Relationships?
	public var links: ResourceLinks?

	public enum `Type`: String, Codable, CaseIterable {
		case appScreenshots
	}

	public struct Attributes: Codable {
		public var fileSize: Int?
		public var fileName: String?
		public var sourceFileChecksum: String?
		public var imageAsset: ImageAsset?
		public var assetToken: String?
		public var assetType: String?
		public var uploadOperations: [UploadOperation]?
		public var assetDeliveryState: AppMediaAssetState?

		public init(fileSize: Int? = nil, fileName: String? = nil, sourceFileChecksum: String? = nil, imageAsset: ImageAsset? = nil, assetToken: String? = nil, assetType: String? = nil, uploadOperations: [UploadOperation]? = nil, assetDeliveryState: AppMediaAssetState? = nil) {
			self.fileSize = fileSize
			self.fileName = fileName
			self.sourceFileChecksum = sourceFileChecksum
			self.imageAsset = imageAsset
			self.assetToken = assetToken
			self.assetType = assetType
			self.uploadOperations = uploadOperations
			self.assetDeliveryState = assetDeliveryState
		}

		public init(from decoder: Decoder) throws {
			let values = try decoder.container(keyedBy: StringCodingKey.self)
			self.fileSize = try values.decodeIfPresent(Int.self, forKey: "fileSize")
			self.fileName = try values.decodeIfPresent(String.self, forKey: "fileName")
			self.sourceFileChecksum = try values.decodeIfPresent(String.self, forKey: "sourceFileChecksum")
			self.imageAsset = try values.decodeIfPresent(ImageAsset.self, forKey: "imageAsset")
			self.assetToken = try values.decodeIfPresent(String.self, forKey: "assetToken")
			self.assetType = try values.decodeIfPresent(String.self, forKey: "assetType")
			self.uploadOperations = try values.decodeIfPresent([UploadOperation].self, forKey: "uploadOperations")
			self.assetDeliveryState = try values.decodeIfPresent(AppMediaAssetState.self, forKey: "assetDeliveryState")
		}

		public func encode(to encoder: Encoder) throws {
			var values = encoder.container(keyedBy: StringCodingKey.self)
			try values.encodeIfPresent(fileSize, forKey: "fileSize")
			try values.encodeIfPresent(fileName, forKey: "fileName")
			try values.encodeIfPresent(sourceFileChecksum, forKey: "sourceFileChecksum")
			try values.encodeIfPresent(imageAsset, forKey: "imageAsset")
			try values.encodeIfPresent(assetToken, forKey: "assetToken")
			try values.encodeIfPresent(assetType, forKey: "assetType")
			try values.encodeIfPresent(uploadOperations, forKey: "uploadOperations")
			try values.encodeIfPresent(assetDeliveryState, forKey: "assetDeliveryState")
		}
	}

	public struct Relationships: Codable {
		public var appScreenshotSet: AppScreenshotSet?

		public struct AppScreenshotSet: Codable {
			public var links: Links?
			public var data: Data?

			public struct Links: Codable {
				public var this: String?
				public var related: String?

				public init(this: String? = nil, related: String? = nil) {
					self.this = this
					self.related = related
				}

				public init(from decoder: Decoder) throws {
					let values = try decoder.container(keyedBy: StringCodingKey.self)
					self.this = try values.decodeIfPresent(String.self, forKey: "self")
					self.related = try values.decodeIfPresent(String.self, forKey: "related")
				}

				public func encode(to encoder: Encoder) throws {
					var values = encoder.container(keyedBy: StringCodingKey.self)
					try values.encodeIfPresent(this, forKey: "self")
					try values.encodeIfPresent(related, forKey: "related")
				}
			}

			public struct Data: Codable, Identifiable {
				public var type: `Type`
				public var id: String

				public enum `Type`: String, Codable, CaseIterable {
					case appScreenshotSets
				}

				public init(type: `Type`, id: String) {
					self.type = type
					self.id = id
				}

				public init(from decoder: Decoder) throws {
					let values = try decoder.container(keyedBy: StringCodingKey.self)
					self.type = try values.decode(`Type`.self, forKey: "type")
					self.id = try values.decode(String.self, forKey: "id")
				}

				public func encode(to encoder: Encoder) throws {
					var values = encoder.container(keyedBy: StringCodingKey.self)
					try values.encode(type, forKey: "type")
					try values.encode(id, forKey: "id")
				}
			}

			public init(links: Links? = nil, data: Data? = nil) {
				self.links = links
				self.data = data
			}

			public init(from decoder: Decoder) throws {
				let values = try decoder.container(keyedBy: StringCodingKey.self)
				self.links = try values.decodeIfPresent(Links.self, forKey: "links")
				self.data = try values.decodeIfPresent(Data.self, forKey: "data")
			}

			public func encode(to encoder: Encoder) throws {
				var values = encoder.container(keyedBy: StringCodingKey.self)
				try values.encodeIfPresent(links, forKey: "links")
				try values.encodeIfPresent(data, forKey: "data")
			}
		}

		public init(appScreenshotSet: AppScreenshotSet? = nil) {
			self.appScreenshotSet = appScreenshotSet
		}

		public init(from decoder: Decoder) throws {
			let values = try decoder.container(keyedBy: StringCodingKey.self)
			self.appScreenshotSet = try values.decodeIfPresent(AppScreenshotSet.self, forKey: "appScreenshotSet")
		}

		public func encode(to encoder: Encoder) throws {
			var values = encoder.container(keyedBy: StringCodingKey.self)
			try values.encodeIfPresent(appScreenshotSet, forKey: "appScreenshotSet")
		}
	}

	public init(type: `Type`, id: String, attributes: Attributes? = nil, relationships: Relationships? = nil, links: ResourceLinks? = nil) {
		self.type = type
		self.id = id
		self.attributes = attributes
		self.relationships = relationships
		self.links = links
	}

	public init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: StringCodingKey.self)
		self.type = try values.decode(`Type`.self, forKey: "type")
		self.id = try values.decode(String.self, forKey: "id")
		self.attributes = try values.decodeIfPresent(Attributes.self, forKey: "attributes")
		self.relationships = try values.decodeIfPresent(Relationships.self, forKey: "relationships")
		self.links = try values.decodeIfPresent(ResourceLinks.self, forKey: "links")
	}

	public func encode(to encoder: Encoder) throws {
		var values = encoder.container(keyedBy: StringCodingKey.self)
		try values.encode(type, forKey: "type")
		try values.encode(id, forKey: "id")
		try values.encodeIfPresent(attributes, forKey: "attributes")
		try values.encodeIfPresent(relationships, forKey: "relationships")
		try values.encodeIfPresent(links, forKey: "links")
	}
}
