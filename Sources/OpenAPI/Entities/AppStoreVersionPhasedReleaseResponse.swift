// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation

public struct AppStoreVersionPhasedReleaseResponse: Codable {
	/// AppStoreVersionPhasedRelease
	public var data: AppStoreVersionPhasedRelease
	public var links: DocumentLinks

	public init(data: AppStoreVersionPhasedRelease, links: DocumentLinks) {
		self.data = data
		self.links = links
	}
}