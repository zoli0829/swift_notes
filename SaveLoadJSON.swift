// Save and Load JSON with UserDefaults

// We have our codable struct here
struct UserSettings: Codable {
    var username: String
    var isDarkModeEnabled: Bool
}

// Save to UserDefaults
let settings = UserSettings(username: "JohnDoe", isDarkModeEnabled: true)

if let encoded = try? JSONEncoder().encode(settings) {
    UserDefaults.standard.set(encoded, forKey: "userSettings")
}

// Load JSON Data
if let savedData = UserDefaults.standard.data(forKey: "userSettings") {
    if let loadedSettings = try? JSONDecoder().decode(UserSettings.self, from: savedData) {
        print(loadedSettings.username)
    }
}

// Save and Load JSON to Files (Documents Directory)
	// we need a file path helper function
func getDocumentsDirectory() -> URL {
    FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0]
}

// Save JSON to a file
let settings = UserSettings(username: "JohnDoe", isDarkModeEnabled: true)
let url = getDocumentsDirectory().appendingPathComponent("settings.json")

if let data = try? JSONEncoder().encode(settings) {
    try? data.write(to: url)
}

// Load JSON from a file
let url = getDocumentsDirectory().appendingPathComponent("settings.json")

if let data = try? Data(contentsOf: url) {
    if let loadedSettings = try? JSONDecoder().decode(UserSettings.self, from: data) {
        print(loadedSettings.username)
    }
}
