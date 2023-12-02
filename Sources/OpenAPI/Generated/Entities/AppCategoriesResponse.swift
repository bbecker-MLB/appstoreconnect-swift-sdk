// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct AppCategoriesResponse: Codable {
	public var data: [AppCategory]
	public var included: [AppCategory]?
	public var links: PagedDocumentLinks
	public var meta: PagingInformation?

	public init(data: [AppCategory], included: [AppCategory]? = nil, links: PagedDocumentLinks, meta: PagingInformation? = nil) {
		self.data = data
		self.included = included
		self.links = links
		self.meta = meta
	}

	public init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: StringCodingKey.self)
		self.data = try values.decode([AppCategory].self, forKey: "data")
		self.included = try values.decodeIfPresent([AppCategory].self, forKey: "included")
		self.links = try values.decode(PagedDocumentLinks.self, forKey: "links")
		self.meta = try values.decodeIfPresent(PagingInformation.self, forKey: "meta")
	}

	public func encode(to encoder: Encoder) throws {
		var values = encoder.container(keyedBy: StringCodingKey.self)
		try values.encode(data, forKey: "data")
		try values.encodeIfPresent(included, forKey: "included")
		try values.encode(links, forKey: "links")
		try values.encodeIfPresent(meta, forKey: "meta")
	}
}
