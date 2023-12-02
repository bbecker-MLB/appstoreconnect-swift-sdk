// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct AppStoreReviewDetailCreateRequest: Codable {
	public var data: Data

	public struct Data: Codable {
		public var type: `Type`
		public var attributes: Attributes?
		public var relationships: Relationships

		public enum `Type`: String, Codable, CaseIterable {
			case appStoreReviewDetails
		}

		public struct Attributes: Codable {
			public var contactFirstName: String?
			public var contactLastName: String?
			public var contactPhone: String?
			public var contactEmail: String?
			public var demoAccountName: String?
			public var demoAccountPassword: String?
			public var isDemoAccountRequired: Bool?
			public var notes: String?

			public init(contactFirstName: String? = nil, contactLastName: String? = nil, contactPhone: String? = nil, contactEmail: String? = nil, demoAccountName: String? = nil, demoAccountPassword: String? = nil, isDemoAccountRequired: Bool? = nil, notes: String? = nil) {
				self.contactFirstName = contactFirstName
				self.contactLastName = contactLastName
				self.contactPhone = contactPhone
				self.contactEmail = contactEmail
				self.demoAccountName = demoAccountName
				self.demoAccountPassword = demoAccountPassword
				self.isDemoAccountRequired = isDemoAccountRequired
				self.notes = notes
			}

			public init(from decoder: Decoder) throws {
				let values = try decoder.container(keyedBy: StringCodingKey.self)
				self.contactFirstName = try values.decodeIfPresent(String.self, forKey: "contactFirstName")
				self.contactLastName = try values.decodeIfPresent(String.self, forKey: "contactLastName")
				self.contactPhone = try values.decodeIfPresent(String.self, forKey: "contactPhone")
				self.contactEmail = try values.decodeIfPresent(String.self, forKey: "contactEmail")
				self.demoAccountName = try values.decodeIfPresent(String.self, forKey: "demoAccountName")
				self.demoAccountPassword = try values.decodeIfPresent(String.self, forKey: "demoAccountPassword")
				self.isDemoAccountRequired = try values.decodeIfPresent(Bool.self, forKey: "demoAccountRequired")
				self.notes = try values.decodeIfPresent(String.self, forKey: "notes")
			}

			public func encode(to encoder: Encoder) throws {
				var values = encoder.container(keyedBy: StringCodingKey.self)
				try values.encodeIfPresent(contactFirstName, forKey: "contactFirstName")
				try values.encodeIfPresent(contactLastName, forKey: "contactLastName")
				try values.encodeIfPresent(contactPhone, forKey: "contactPhone")
				try values.encodeIfPresent(contactEmail, forKey: "contactEmail")
				try values.encodeIfPresent(demoAccountName, forKey: "demoAccountName")
				try values.encodeIfPresent(demoAccountPassword, forKey: "demoAccountPassword")
				try values.encodeIfPresent(isDemoAccountRequired, forKey: "demoAccountRequired")
				try values.encodeIfPresent(notes, forKey: "notes")
			}
		}

		public struct Relationships: Codable {
			public var appStoreVersion: AppStoreVersion

			public struct AppStoreVersion: Codable {
				public var data: Data

				public struct Data: Codable, Identifiable {
					public var type: `Type`
					public var id: String

					public enum `Type`: String, Codable, CaseIterable {
						case appStoreVersions
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

			public init(appStoreVersion: AppStoreVersion) {
				self.appStoreVersion = appStoreVersion
			}

			public init(from decoder: Decoder) throws {
				let values = try decoder.container(keyedBy: StringCodingKey.self)
				self.appStoreVersion = try values.decode(AppStoreVersion.self, forKey: "appStoreVersion")
			}

			public func encode(to encoder: Encoder) throws {
				var values = encoder.container(keyedBy: StringCodingKey.self)
				try values.encode(appStoreVersion, forKey: "appStoreVersion")
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
