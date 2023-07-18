// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct CiBuildRun: Codable, Identifiable {
	public var type: `Type`
	public var id: String
	public var attributes: Attributes?
	public var relationships: Relationships?
	public var links: ResourceLinks?

	public enum `Type`: String, Codable, CaseIterable {
		case ciBuildRuns
	}

	public struct Attributes: Codable {
		public var number: Int?
		public var createdDate: Date?
		public var startedDate: Date?
		public var finishedDate: Date?
		public var sourceCommit: SourceCommit?
		public var destinationCommit: DestinationCommit?
		public var isPullRequestBuild: Bool?
		public var issueCounts: CiIssueCounts?
		public var executionProgress: CiExecutionProgress?
		public var completionStatus: CiCompletionStatus?
		public var startReason: StartReason?
		public var cancelReason: CancelReason?

		public struct SourceCommit: Codable {
			public var commitSha: String?
			public var message: String?
			public var author: CiGitUser?
			public var committer: CiGitUser?
			public var webURL: URL?

			public init(commitSha: String? = nil, message: String? = nil, author: CiGitUser? = nil, committer: CiGitUser? = nil, webURL: URL? = nil) {
				self.commitSha = commitSha
				self.message = message
				self.author = author
				self.committer = committer
				self.webURL = webURL
			}

			public init(from decoder: Decoder) throws {
				let values = try decoder.container(keyedBy: StringCodingKey.self)
				self.commitSha = try values.decodeIfPresent(String.self, forKey: "commitSha")
				self.message = try values.decodeIfPresent(String.self, forKey: "message")
				self.author = try? values.decodeIfPresent(CiGitUser.self, forKey: "author")
				self.committer = try values.decodeIfPresent(CiGitUser.self, forKey: "committer")
				self.webURL = try values.decodeIfPresent(URL.self, forKey: "webUrl")
			}

			public func encode(to encoder: Encoder) throws {
				var values = encoder.container(keyedBy: StringCodingKey.self)
				try values.encodeIfPresent(commitSha, forKey: "commitSha")
				try values.encodeIfPresent(message, forKey: "message")
				try values.encodeIfPresent(author, forKey: "author")
				try values.encodeIfPresent(committer, forKey: "committer")
				try values.encodeIfPresent(webURL, forKey: "webUrl")
			}
		}

		public struct DestinationCommit: Codable {
			public var commitSha: String?
			public var message: String?
			public var author: CiGitUser?
			public var committer: CiGitUser?
			public var webURL: URL?

			public init(commitSha: String? = nil, message: String? = nil, author: CiGitUser? = nil, committer: CiGitUser? = nil, webURL: URL? = nil) {
				self.commitSha = commitSha
				self.message = message
				self.author = author
				self.committer = committer
				self.webURL = webURL
			}

			public init(from decoder: Decoder) throws {
				let values = try decoder.container(keyedBy: StringCodingKey.self)
				self.commitSha = try values.decodeIfPresent(String.self, forKey: "commitSha")
				self.message = try values.decodeIfPresent(String.self, forKey: "message")
				self.author = try values.decodeIfPresent(CiGitUser.self, forKey: "author")
				self.committer = try values.decodeIfPresent(CiGitUser.self, forKey: "committer")
				self.webURL = try values.decodeIfPresent(URL.self, forKey: "webUrl")
			}

			public func encode(to encoder: Encoder) throws {
				var values = encoder.container(keyedBy: StringCodingKey.self)
				try values.encodeIfPresent(commitSha, forKey: "commitSha")
				try values.encodeIfPresent(message, forKey: "message")
				try values.encodeIfPresent(author, forKey: "author")
				try values.encodeIfPresent(committer, forKey: "committer")
				try values.encodeIfPresent(webURL, forKey: "webUrl")
			}
		}

		public enum StartReason: String, Codable, CaseIterable {
			case gitRefChange = "GIT_REF_CHANGE"
			case manual = "MANUAL"
			case manualRebuild = "MANUAL_REBUILD"
			case pullRequestOpen = "PULL_REQUEST_OPEN"
			case pullRequestUpdate = "PULL_REQUEST_UPDATE"
			case schedule = "SCHEDULE"
		}

		public enum CancelReason: String, Codable, CaseIterable {
			case automaticallyByNewerBuild = "AUTOMATICALLY_BY_NEWER_BUILD"
			case manuallyByUser = "MANUALLY_BY_USER"
		}

		public init(number: Int? = nil, createdDate: Date? = nil, startedDate: Date? = nil, finishedDate: Date? = nil, sourceCommit: SourceCommit? = nil, destinationCommit: DestinationCommit? = nil, isPullRequestBuild: Bool? = nil, issueCounts: CiIssueCounts? = nil, executionProgress: CiExecutionProgress? = nil, completionStatus: CiCompletionStatus? = nil, startReason: StartReason? = nil, cancelReason: CancelReason? = nil) {
			self.number = number
			self.createdDate = createdDate
			self.startedDate = startedDate
			self.finishedDate = finishedDate
			self.sourceCommit = sourceCommit
			self.destinationCommit = destinationCommit
			self.isPullRequestBuild = isPullRequestBuild
			self.issueCounts = issueCounts
			self.executionProgress = executionProgress
			self.completionStatus = completionStatus
			self.startReason = startReason
			self.cancelReason = cancelReason
		}

		public init(from decoder: Decoder) throws {
			let values = try decoder.container(keyedBy: StringCodingKey.self)
			self.number = try values.decodeIfPresent(Int.self, forKey: "number")
			self.createdDate = try values.decodeIfPresent(Date.self, forKey: "createdDate")
			self.startedDate = try values.decodeIfPresent(Date.self, forKey: "startedDate")
			self.finishedDate = try values.decodeIfPresent(Date.self, forKey: "finishedDate")
			self.sourceCommit = try values.decodeIfPresent(SourceCommit.self, forKey: "sourceCommit")
			self.destinationCommit = try values.decodeIfPresent(DestinationCommit.self, forKey: "destinationCommit")
			self.isPullRequestBuild = try values.decodeIfPresent(Bool.self, forKey: "isPullRequestBuild")
			self.issueCounts = try values.decodeIfPresent(CiIssueCounts.self, forKey: "issueCounts")
			self.executionProgress = try values.decodeIfPresent(CiExecutionProgress.self, forKey: "executionProgress")
			self.completionStatus = try values.decodeIfPresent(CiCompletionStatus.self, forKey: "completionStatus")
			self.startReason = try values.decodeIfPresent(StartReason.self, forKey: "startReason")
			self.cancelReason = try values.decodeIfPresent(CancelReason.self, forKey: "cancelReason")
		}

		public func encode(to encoder: Encoder) throws {
			var values = encoder.container(keyedBy: StringCodingKey.self)
			try values.encodeIfPresent(number, forKey: "number")
			try values.encodeIfPresent(createdDate, forKey: "createdDate")
			try values.encodeIfPresent(startedDate, forKey: "startedDate")
			try values.encodeIfPresent(finishedDate, forKey: "finishedDate")
			try values.encodeIfPresent(sourceCommit, forKey: "sourceCommit")
			try values.encodeIfPresent(destinationCommit, forKey: "destinationCommit")
			try values.encodeIfPresent(isPullRequestBuild, forKey: "isPullRequestBuild")
			try values.encodeIfPresent(issueCounts, forKey: "issueCounts")
			try values.encodeIfPresent(executionProgress, forKey: "executionProgress")
			try values.encodeIfPresent(completionStatus, forKey: "completionStatus")
			try values.encodeIfPresent(startReason, forKey: "startReason")
			try values.encodeIfPresent(cancelReason, forKey: "cancelReason")
		}
	}

	public struct Relationships: Codable {
		public var builds: Builds?
		public var workflow: Workflow?
		public var product: Product?
		public var sourceBranchOrTag: SourceBranchOrTag?
		public var destinationBranch: DestinationBranch?
		public var pullRequest: PullRequest?

		public struct Builds: Codable {
			public var links: Links?
			public var meta: PagingInformation?
			public var data: [Datum]?

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

			public struct Datum: Codable, Identifiable {
				public var type: `Type`
				public var id: String

				public enum `Type`: String, Codable, CaseIterable {
					case builds
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

			public init(links: Links? = nil, meta: PagingInformation? = nil, data: [Datum]? = nil) {
				self.links = links
				self.meta = meta
				self.data = data
			}

			public init(from decoder: Decoder) throws {
				let values = try decoder.container(keyedBy: StringCodingKey.self)
				self.links = try values.decodeIfPresent(Links.self, forKey: "links")
				self.meta = try values.decodeIfPresent(PagingInformation.self, forKey: "meta")
				self.data = try values.decodeIfPresent([Datum].self, forKey: "data")
			}

			public func encode(to encoder: Encoder) throws {
				var values = encoder.container(keyedBy: StringCodingKey.self)
				try values.encodeIfPresent(links, forKey: "links")
				try values.encodeIfPresent(meta, forKey: "meta")
				try values.encodeIfPresent(data, forKey: "data")
			}
		}

		public struct Workflow: Codable {
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
					case ciWorkflows
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

		public struct Product: Codable {
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
					case ciProducts
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

		public struct SourceBranchOrTag: Codable {
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
					case scmGitReferences
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

		public struct DestinationBranch: Codable {
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
					case scmGitReferences
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

		public struct PullRequest: Codable {
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
					case scmPullRequests
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

		public init(builds: Builds? = nil, workflow: Workflow? = nil, product: Product? = nil, sourceBranchOrTag: SourceBranchOrTag? = nil, destinationBranch: DestinationBranch? = nil, pullRequest: PullRequest? = nil) {
			self.builds = builds
			self.workflow = workflow
			self.product = product
			self.sourceBranchOrTag = sourceBranchOrTag
			self.destinationBranch = destinationBranch
			self.pullRequest = pullRequest
		}

		public init(from decoder: Decoder) throws {
			let values = try decoder.container(keyedBy: StringCodingKey.self)
			self.builds = try values.decodeIfPresent(Builds.self, forKey: "builds")
			self.workflow = try values.decodeIfPresent(Workflow.self, forKey: "workflow")
			self.product = try values.decodeIfPresent(Product.self, forKey: "product")
			self.sourceBranchOrTag = try values.decodeIfPresent(SourceBranchOrTag.self, forKey: "sourceBranchOrTag")
			self.destinationBranch = try values.decodeIfPresent(DestinationBranch.self, forKey: "destinationBranch")
			self.pullRequest = try values.decodeIfPresent(PullRequest.self, forKey: "pullRequest")
		}

		public func encode(to encoder: Encoder) throws {
			var values = encoder.container(keyedBy: StringCodingKey.self)
			try values.encodeIfPresent(builds, forKey: "builds")
			try values.encodeIfPresent(workflow, forKey: "workflow")
			try values.encodeIfPresent(product, forKey: "product")
			try values.encodeIfPresent(sourceBranchOrTag, forKey: "sourceBranchOrTag")
			try values.encodeIfPresent(destinationBranch, forKey: "destinationBranch")
			try values.encodeIfPresent(pullRequest, forKey: "pullRequest")
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
