import Foundation

let paymentsArray = [994.54, 44.31, 90.0, 6.5, 21.24, 63.7]

// filter the payments above 60
let largePayments = paymentsArray.filter { $0 > 60 }
print(largePayments)

// convert the payments to strings
let filteredPaymentStrings = largePayments.map { String($0) }

// concatenate the strings
let finalList = filteredPaymentStrings.reduce("") {$0 + "," + $1}
print(finalList)
print(type(of: finalList))

// Exercise
struct Order {
    let price: Int
    let location: String
}

// Step 1: Filter the players array
func totalRevenueOf(orders: [Order],  location: String) -> Int {
    let ordersAtLocation = orders.filter { $0.location == location }
    //Step 2: Confirm that the filtered array contains the correct values
    print(ordersAtLocation)
    // Step 3: Convert filtered orders array to array of their prices
    let orderPrices = ordersAtLocation.map { $0.price }
    // Step 4: Print the order prices array to confirm the result
    print(orderPrices)
    // Step 5: Return the sum of all prices
    let result = orderPrices.reduce(0) {$0 + $1}
    // Step 6: Confirm that function implementation works as expected
    print(result)
    
    return result
    
}
 
let orders = [
    Order(price: 24, location: "New York"),
    Order(price: 37, location: "San Francisco"),
    Order(price: 101, location: "New York"),
]
 
let result = totalRevenueOf(orders: orders, location: "New York")
