// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct CiBuildAction: Codable, Identifiable {
	public var type: `Type`
	public var id: String
	public var attributes: Attributes?
	public var relationships: Relationships?
	public var links: ResourceLinks?

	public enum `Type`: String, Codable, CaseIterable {
		case ciBuildActions
	}

	public struct Attributes: Codable {
		public var name: String?
		public var actionType: CiActionType?
		public var startedDate: Date?
		public var finishedDate: Date?
		public var issueCounts: CiIssueCounts?
		public var executionProgress: CiExecutionProgress?
		public var completionStatus: CiCompletionStatus?
		public var isRequiredToPass: Bool?

		public init(name: String? = nil, actionType: CiActionType? = nil, startedDate: Date? = nil, finishedDate: Date? = nil, issueCounts: CiIssueCounts? = nil, executionProgress: CiExecutionProgress? = nil, completionStatus: CiCompletionStatus? = nil, isRequiredToPass: Bool? = nil) {
			self.name = name
			self.actionType = actionType
			self.startedDate = startedDate
			self.finishedDate = finishedDate
			self.issueCounts = issueCounts
			self.executionProgress = executionProgress
			self.completionStatus = completionStatus
			self.isRequiredToPass = isRequiredToPass
		}

		public init(from decoder: Decoder) throws {
			let values = try decoder.container(keyedBy: StringCodingKey.self)
			self.name = try values.decodeIfPresent(String.self, forKey: "name")
			self.actionType = try values.decodeIfPresent(CiActionType.self, forKey: "actionType")
			self.startedDate = try values.decodeIfPresent(Date.self, forKey: "startedDate")
			self.finishedDate = try values.decodeIfPresent(Date.self, forKey: "finishedDate")
			self.issueCounts = try values.decodeIfPresent(CiIssueCounts.self, forKey: "issueCounts")
			self.executionProgress = try values.decodeIfPresent(CiExecutionProgress.self, forKey: "executionProgress")
			self.completionStatus = try values.decodeIfPresent(CiCompletionStatus.self, forKey: "completionStatus")
			self.isRequiredToPass = try values.decodeIfPresent(Bool.self, forKey: "isRequiredToPass")
		}

		public func encode(to encoder: Encoder) throws {
			var values = encoder.container(keyedBy: StringCodingKey.self)
			try values.encodeIfPresent(name, forKey: "name")
			try values.encodeIfPresent(actionType, forKey: "actionType")
			try values.encodeIfPresent(startedDate, forKey: "startedDate")
			try values.encodeIfPresent(finishedDate, forKey: "finishedDate")
			try values.encodeIfPresent(issueCounts, forKey: "issueCounts")
			try values.encodeIfPresent(executionProgress, forKey: "executionProgress")
			try values.encodeIfPresent(completionStatus, forKey: "completionStatus")
			try values.encodeIfPresent(isRequiredToPass, forKey: "isRequiredToPass")
		}
	}

	public struct Relationships: Codable {
		public var buildRun: BuildRun?

		public struct BuildRun: Codable {
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
					case ciBuildRuns
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

		public init(buildRun: BuildRun? = nil) {
			self.buildRun = buildRun
		}

		public init(from decoder: Decoder) throws {
			let values = try decoder.container(keyedBy: StringCodingKey.self)
			self.buildRun = try values.decodeIfPresent(BuildRun.self, forKey: "buildRun")
		}

		public func encode(to encoder: Encoder) throws {
			var values = encoder.container(keyedBy: StringCodingKey.self)
			try values.encodeIfPresent(buildRun, forKey: "buildRun")
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
