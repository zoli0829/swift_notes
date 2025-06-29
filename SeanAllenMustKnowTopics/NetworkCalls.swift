import SwiftUI

struct ContentView: View {
    @State private var user: GitHubUser?

    // Step 1: Create the dummy view
    var body: some View {
        VStack(spacing: 20) {
            AsyncImage(url:URL(string: user?.avatarUrl ?? "")) {image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(Circle())
            } placeholder: {
                Circle()
                    .foregroundColor(.secondary)
            }
            .frame(width: 120, height: 120)

            Text(user?.login ?? "Login Placeholder")
                .bold()
                .font(.title3)

            Text(user?.bio ?? "Bio Placeholder")
                .padding()
            
            Spacer()
            }
            .padding()
            .task {
                do {
                    user = try await getUser()
                } catch GHError.invalidURL {
                    print("Invalid URL")
                } catch GHError.invalidResponse {
                    print("Invalid response from server")
                } catch GHError.invalidData {
                    print("Invalid data received")
                } catch {
                    print("An unexpected error occurred: \(error)")
                }
            }
    }

    // Step 3: Network request to fetch GitHub user data
    // This is probably in a ViewModel in a real app, but for simplicity, we will keep it here.
    func getUser() async throws -> GitHubUser {
        let endpoint = "https://api.github.com/users/zoli0829"
        // convert the endpoint string to a URL
        guard let url = URL(string: endpoint) else {
            throw GHError.invalidURL
        }

        let (data, response) = try await URLSession.shared.data(from: url)

        // check if the response is valid
        guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
            throw GHError.invalidResponse
        }

        // convert the data to a GitHubUser object
        do {
            let decoder = JSONDecoder()
            decoder.keyDecodingStrategy = .convertFromSnakeCase // to handle snake_case keys
            return try decoder.decode(GitHubUser.self, from: data)
        } catch {
            throw GHError.invalidData
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

// Step 2: Model for GitHub User
struct GitHubUser: Codable {
    let login: String
    let avatarUrl: String // avatar_url but we will use .convertFromSnakeCase
    let bio: String
}

// This enum is used to handle different types of errors that can occur during the network request.
enum GHError: Error {
    case invalidURL
    case invalidResponse
    case invalidData
}