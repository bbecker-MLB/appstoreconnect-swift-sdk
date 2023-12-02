// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.Apps.WithID.Relationships {
	public var gameCenterEnabledVersions: GameCenterEnabledVersions {
		GameCenterEnabledVersions(path: path + "/gameCenterEnabledVersions")
	}

	public struct GameCenterEnabledVersions {
		/// Path: `/v1/apps/{id}/relationships/gameCenterEnabledVersions`
		public let path: String
	}
}
