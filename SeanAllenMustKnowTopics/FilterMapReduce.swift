struct IndieApp {
  let name: String
  let monthlyPrice: Double
  let users: Int
}

let appPortfolio = [
  IndieApp(name: "App A", monthlyPrice: 4.99, users: 1000),
  IndieApp(name: "App B", monthlyPrice: 0.00, users: 5000),
  IndieApp(name: "App C", monthlyPrice: 1.99, users: 2000),
  IndieApp(name: "App D", monthlyPrice: 3.99, users: 3000),
]

// Filter
let freeApps = appPortfolio.filter { $0.monthlyPrice == 0.00 }
print(freeApps)

// Map
let appNames = appPortfolio.map { $0.name }.sorted()
print(appNames)

let increasedPrices = appPortfolio.map { $0.monthlyPrice * 1.5 }

// Reduce
let numbers = [3, 5, 9, 12, 18]
let sum = numbers.reduce(100, +)
print(sum)

let totalUsers = appPortfolio.reduce(0, { $0 + $1.users} )
print(totalUsers)
// Chaining
let recurringRevenue = appPortfolio.map { $0.monthlyPrice * Double($0.users) }.reduce(0, +)
print(recurringRevenue)

// Compact Map
// filters out the nils
let nilNumbers: [Int?] = [1, nil, 17, nil, 3, 7, nil, 99]
let nonNilNumbers = nilNumbers.compactMap { $0 }
print(nonNilNumbers)

// Flat Map
// Turns an array of arrays into a single array
let arrayOfArrays: [[Int]] = [[1, 2], [3, 4], [5]]
let flattenedArray = arrayOfArrays.flatMap { $0 }
print(flattenedArray)
