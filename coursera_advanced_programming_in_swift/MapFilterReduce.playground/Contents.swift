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
