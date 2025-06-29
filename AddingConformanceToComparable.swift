// Adding conformance to Comparable for custom types

struct User: Comparable, Identifiable {
    let id = UUID()
    var firstName: String
    var LastName: String
    
    static func <(lhs: User, rhs: User) -> Bool {
        lhs.LastName < rhs.LastName
    }
}

struct ContentView: View {
    let users = [
        User(firstName: "Zoltan", LastName: "Vegh"),
        User(firstName: "Daniel", LastName: "NagyPal"),
        User(firstName: "Virag", LastName: "Radics")
    ].sorted()
    
    var body: some View {
        List(users) { user in
            Text("\(user.LastName), \(user.firstName)")
        }
    }
}