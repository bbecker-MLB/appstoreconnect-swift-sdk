// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.AppInfos.WithID {
	public var appInfoLocalizations: AppInfoLocalizations {
		AppInfoLocalizations(path: path + "/appInfoLocalizations")
	}

	public struct AppInfoLocalizations {
		/// Path: `/v1/appInfos/{id}/appInfoLocalizations`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.AppInfoLocalizationsResponse> {
			Request(path: path, method: "GET", query: parameters?.asQuery, id: "appInfos-appInfoLocalizations-get_to_many_related")
		}

		public struct GetParameters {
			public var filterLocale: [String]?
			public var fieldsAppInfos: [FieldsAppInfos]?
			public var fieldsAppInfoLocalizations: [FieldsAppInfoLocalizations]?
			public var limit: Int?
			public var include: [Include]?

			public enum FieldsAppInfos: String, Codable, CaseIterable {
				case ageRatingDeclaration
				case app
				case appInfoLocalizations
				case appStoreAgeRating
				case appStoreState
				case brazilAgeRating
				case brazilAgeRatingV2
				case kidsAgeBand
				case primaryCategory
				case primarySubcategoryOne
				case primarySubcategoryTwo
				case secondaryCategory
				case secondarySubcategoryOne
				case secondarySubcategoryTwo
			}

			public enum FieldsAppInfoLocalizations: String, Codable, CaseIterable {
				case appInfo
				case locale
				case name
				case privacyChoicesURL = "privacyChoicesUrl"
				case privacyPolicyText
				case privacyPolicyURL = "privacyPolicyUrl"
				case subtitle
			}

			public enum Include: String, Codable, CaseIterable {
				case appInfo
			}

			public init(filterLocale: [String]? = nil, fieldsAppInfos: [FieldsAppInfos]? = nil, fieldsAppInfoLocalizations: [FieldsAppInfoLocalizations]? = nil, limit: Int? = nil, include: [Include]? = nil) {
				self.filterLocale = filterLocale
				self.fieldsAppInfos = fieldsAppInfos
				self.fieldsAppInfoLocalizations = fieldsAppInfoLocalizations
				self.limit = limit
				self.include = include
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(filterLocale, forKey: "filter[locale]")
				encoder.encode(fieldsAppInfos, forKey: "fields[appInfos]")
				encoder.encode(fieldsAppInfoLocalizations, forKey: "fields[appInfoLocalizations]")
				encoder.encode(limit, forKey: "limit")
				encoder.encode(include, forKey: "include")
				return encoder.items
			}
		}
	}
}
