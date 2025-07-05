// Singletons
// An instance of a class that can only be created once and is globally accessible throughout the app.
// like UserDefaults.standard in iOS

final class MySingleton {

  static let shared = MySingleton()
  private init() {}

  func doSomething() {
    print("Doing something in MySingleton")
  }
}
