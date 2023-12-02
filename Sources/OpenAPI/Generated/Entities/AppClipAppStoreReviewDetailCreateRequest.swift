// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct AppClipAppStoreReviewDetailCreateRequest: Codable {
	public var data: Data

	public struct Data: Codable {
		public var type: `Type`
		public var attributes: Attributes?
		public var relationships: Relationships

		public enum `Type`: String, Codable, CaseIterable {
			case appClipAppStoreReviewDetails
		}

		public struct Attributes: Codable {
			public var invocationURLs: [URL]?

			public init(invocationURLs: [URL]? = nil) {
				self.invocationURLs = invocationURLs
			}

			public init(from decoder: Decoder) throws {
				let values = try decoder.container(keyedBy: StringCodingKey.self)
				self.invocationURLs = try values.decodeIfPresent([URL].self, forKey: "invocationUrls")
			}

			public func encode(to encoder: Encoder) throws {
				var values = encoder.container(keyedBy: StringCodingKey.self)
				try values.encodeIfPresent(invocationURLs, forKey: "invocationUrls")
			}
		}

		public struct Relationships: Codable {
			public var appClipDefaultExperience: AppClipDefaultExperience

			public struct AppClipDefaultExperience: Codable {
				public var data: Data

				public struct Data: Codable, Identifiable {
					public var type: `Type`
					public var id: String

					public enum `Type`: String, Codable, CaseIterable {
						case appClipDefaultExperiences
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

				public init(data: Data) {
					self.data = data
				}

				public init(from decoder: Decoder) throws {
					let values = try decoder.container(keyedBy: StringCodingKey.self)
					self.data = try values.decode(Data.self, forKey: "data")
				}

				public func encode(to encoder: Encoder) throws {
					var values = encoder.container(keyedBy: StringCodingKey.self)
					try values.encode(data, forKey: "data")
				}
			}

			public init(appClipDefaultExperience: AppClipDefaultExperience) {
				self.appClipDefaultExperience = appClipDefaultExperience
			}

			public init(from decoder: Decoder) throws {
				let values = try decoder.container(keyedBy: StringCodingKey.self)
				self.appClipDefaultExperience = try values.decode(AppClipDefaultExperience.self, forKey: "appClipDefaultExperience")
			}

			public func encode(to encoder: Encoder) throws {
				var values = encoder.container(keyedBy: StringCodingKey.self)
				try values.encode(appClipDefaultExperience, forKey: "appClipDefaultExperience")
			}
		}

		public init(type: `Type`, attributes: Attributes? = nil, relationships: Relationships) {
			self.type = type
			self.attributes = attributes
			self.relationships = relationships
		}

		public init(from decoder: Decoder) throws {
			let values = try decoder.container(keyedBy: StringCodingKey.self)
			self.type = try values.decode(`Type`.self, forKey: "type")
			self.attributes = try values.decodeIfPresent(Attributes.self, forKey: "attributes")
			self.relationships = try values.decode(Relationships.self, forKey: "relationships")
		}

		public func encode(to encoder: Encoder) throws {
			var values = encoder.container(keyedBy: StringCodingKey.self)
			try values.encode(type, forKey: "type")
			try values.encodeIfPresent(attributes, forKey: "attributes")
			try values.encode(relationships, forKey: "relationships")
		}
	}

	public init(data: Data) {
		self.data = data
	}

	public init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: StringCodingKey.self)
		self.data = try values.decode(Data.self, forKey: "data")
	}

	public func encode(to encoder: Encoder) throws {
		var values = encoder.container(keyedBy: StringCodingKey.self)
		try values.encode(data, forKey: "data")
	}
}
