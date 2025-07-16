import Foundation

let reservationsInPerson: Set<String> = ["000-345-3441", "000-345-3442"]
let reservationsOverPhone: Set<String> = ["000-345-3443", "000-345-3444"]
let reservationsOverInternet: Set<String> = ["000-345-3445", "000-345-3446"]

let inPersonAndOverPhone: Set<String> = reservationsInPerson.union(reservationsOverPhone)
print(inPersonAndOverPhone)

var allPhoneNumbers: Set<String> = inPersonAndOverPhone.union(reservationsOverInternet)
print(allPhoneNumbers)

var confirmationCodes: Set<String> = ["abc123", "xyz789"]
print(
  "Number of phone reservations: \(allPhoneNumbers.count), number of confirmation codes: \(confirmationCodes.count)"
)

confirmationCodes.insert("asd123")
confirmationCodes.insert("asd124")
confirmationCodes.insert("asd125")
confirmationCodes.insert("asd126")
print(confirmationCodes)

allPhoneNumbers.remove("000-345-3441")
confirmationCodes.remove("abc123")
print(
  "Number of phone reservations: \(allPhoneNumbers.count), number of confirmation codes: \(confirmationCodes.count)"
)

enum PastaTypes: Int {
  case spaghetti
  case penne
  case ravioli
  case rigatoni
}
print(PastaTypes.penne.rawValue)

// finished day 4 of coursera
// Started Recursion and functional programming in Swift
