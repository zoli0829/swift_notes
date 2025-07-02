// Array vs Set
// an array can have duplicates
// ordered list
// less performance -O(n) for searching

// a set cannot have duplicates
// unordered list
// better performance - O(1) for searching

import Foundation

var swiftUIDevs: Set = ["Sean", "James"]
var swiftDevs: Set = ["Sean", "James", "Paul", "John", "Jane"]
var kotlinDevs: Set = ["Sean", "Zoltan", "Paul", "David", "Jane"]
var experiencedDevs: Set = ["Sean", "Jane", "David"]

// Intersect - pull out overlap
let experiencedSwiftUIDevs = swiftUIDevs.intersection(experiencedDevs)
print("Experienced SwiftUI Developers: \(experiencedSwiftUIDevs)")

// Subtract - pull out difference
let juniorSwiftDevs = swiftDevs.subtracting(experiencedDevs)
print("Junior Swift Developers: \(juniorSwiftDevs)")

// Disjoint - check if two sets have no overlap
swiftUIDevs.isDisjoint(with: kotlinDevs)

// Union - combine two sets
swiftDevs.union(swiftUIDevs)

// Exclusive - only in one set
let specialists = swiftDevs.symmetricDifference(kotlinDevs)

// Subset - check if one set is a subset of another
swiftUIDevs.isSubset(of: swiftDevs)

// Superset
swiftDevs.isSuperset(of: swiftUIDevs)

// Insert, Delete, Find
swiftDevs.insert("John")
swiftDevs.remove("John")
swiftDevs.contains("John")
