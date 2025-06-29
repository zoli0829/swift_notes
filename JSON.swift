import Foundation

let jsonString = """
{
	"copyright": "Yin Hao",
	"date": "2018-10-30",
	"explanation": "Meteors have been shooting out from the constellation of Orion.",
	"hdurl": "https://apod.nasa.gov/apod/image/1810/Orionids_Hao_2324.jpg",
	"media_type": "image",
	"service_version": "v1",
	"title": "Orionids Meteor over Inner Mongolia",
	"url": "https://apod.nasa.gov/apod/image/1810/Orionids_Hao_960.jpg"
}
"""

struct APOD: Codable {
	let copyright: String
	let date: String
	let explanation: String
	let hdurl: String
	let media_type: String
	let service_version: String
	let title: String
	let url: String
}

let jsonData = jsonString.data(using: .utf8)!
let decoder = JSONDecoder()
let apod = try! decoder.decode(APOD.self, from: jsonData)

print(apod.explanation)