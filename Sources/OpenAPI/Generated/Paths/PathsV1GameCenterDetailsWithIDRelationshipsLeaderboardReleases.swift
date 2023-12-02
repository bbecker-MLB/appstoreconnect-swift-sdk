// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.GameCenterDetails.WithID.Relationships {
	public var leaderboardReleases: LeaderboardReleases {
		LeaderboardReleases(path: path + "/leaderboardReleases")
	}

	public struct LeaderboardReleases {
		/// Path: `/v1/gameCenterDetails/{id}/relationships/leaderboardReleases`
		public let path: String
	}
}
