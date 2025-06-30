// Generics can elimininate code duplication by creating a general solution that can handle various types.

func determineHigherValue<T: Comparable>(valueOne: T, valueTwo: T) {
  let higherValue = valueOne > valueTwo ? valueOne : valueTwo
  print("The higher value is: \(higherValue)")
}

determineHigherValue(valueOne: 10, valueTwo: 20)  // Output: The higher value is: 20
determineHigherValue(valueOne: "Apple", valueTwo: "Banana")  // Output: The higher value is: Banana
determineHigherValue(valueOne: Date.now, valueTwo: Date.distantFuture)  // Output: The higher value is: distant future date

func fetchData<T: Decodable>(for: T.Type, from url: URL) async throws -> T {
  let (data, _) = try await URLSession.shared.data(from: url)

  do {
    return try decoder.decode(T.self, from: data)
  } catch {
    throw error
  }
}
