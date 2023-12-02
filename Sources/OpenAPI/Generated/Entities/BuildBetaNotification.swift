// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct BuildBetaNotification: Codable, Identifiable {
	public var type: `Type`
	public var id: String
	public var links: ResourceLinks?

	public enum `Type`: String, Codable, CaseIterable {
		case buildBetaNotifications
	}

	public init(type: `Type`, id: String, links: ResourceLinks? = nil) {
		self.type = type
		self.id = id
		self.links = links
	}

	public init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: StringCodingKey.self)
		self.type = try values.decode(`Type`.self, forKey: "type")
		self.id = try values.decode(String.self, forKey: "id")
		self.links = try values.decodeIfPresent(ResourceLinks.self, forKey: "links")
	}

	public func encode(to encoder: Encoder) throws {
		var values = encoder.container(keyedBy: StringCodingKey.self)
		try values.encode(type, forKey: "type")
		try values.encode(id, forKey: "id")
		try values.encodeIfPresent(links, forKey: "links")
	}
}
