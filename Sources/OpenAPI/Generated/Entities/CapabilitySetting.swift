// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct CapabilitySetting: Codable {
	public var key: Key?
	public var name: String?
	public var description: String?
	public var isEnabledByDefault: Bool?
	public var isVisible: Bool?
	public var allowedInstances: AllowedInstances?
	public var minInstances: Int?
	public var options: [CapabilityOption]?

	public enum Key: String, Codable, CaseIterable {
		case icloudVersion = "ICLOUD_VERSION"
		case dataProtectionPermissionLevel = "DATA_PROTECTION_PERMISSION_LEVEL"
		case appleIDAuthAppConsent = "APPLE_ID_AUTH_APP_CONSENT"
	}

	public enum AllowedInstances: String, Codable, CaseIterable {
		case entry = "ENTRY"
		case single = "SINGLE"
		case multiple = "MULTIPLE"
	}

	public init(key: Key? = nil, name: String? = nil, description: String? = nil, isEnabledByDefault: Bool? = nil, isVisible: Bool? = nil, allowedInstances: AllowedInstances? = nil, minInstances: Int? = nil, options: [CapabilityOption]? = nil) {
		self.key = key
		self.name = name
		self.description = description
		self.isEnabledByDefault = isEnabledByDefault
		self.isVisible = isVisible
		self.allowedInstances = allowedInstances
		self.minInstances = minInstances
		self.options = options
	}

	public init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: StringCodingKey.self)
		self.key = try values.decodeIfPresent(Key.self, forKey: "key")
		self.name = try values.decodeIfPresent(String.self, forKey: "name")
		self.description = try values.decodeIfPresent(String.self, forKey: "description")
		self.isEnabledByDefault = try values.decodeIfPresent(Bool.self, forKey: "enabledByDefault")
		self.isVisible = try values.decodeIfPresent(Bool.self, forKey: "visible")
		self.allowedInstances = try values.decodeIfPresent(AllowedInstances.self, forKey: "allowedInstances")
		self.minInstances = try values.decodeIfPresent(Int.self, forKey: "minInstances")
		self.options = try values.decodeIfPresent([CapabilityOption].self, forKey: "options")
	}

	public func encode(to encoder: Encoder) throws {
		var values = encoder.container(keyedBy: StringCodingKey.self)
		try values.encodeIfPresent(key, forKey: "key")
		try values.encodeIfPresent(name, forKey: "name")
		try values.encodeIfPresent(description, forKey: "description")
		try values.encodeIfPresent(isEnabledByDefault, forKey: "enabledByDefault")
		try values.encodeIfPresent(isVisible, forKey: "visible")
		try values.encodeIfPresent(allowedInstances, forKey: "allowedInstances")
		try values.encodeIfPresent(minInstances, forKey: "minInstances")
		try values.encodeIfPresent(options, forKey: "options")
	}
}
