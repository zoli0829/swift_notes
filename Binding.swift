struct ContentView: View {
	
    @State private var counter = 0

    var body: some View {
        VStack {
            Text("\(counter)")
        }
    }
}

struct SubView: View {

    @Binding var counter: Int

    var body: some View {
        Button("Increment") {
            counter += 1
        }
    }
}

/* 
In the parent view we should declare the state variable, pass it onto the SubView,
and use the @Binding property wrapper in the SubView to create a two-way binding.
This allows the SubView to modify the parent's state variable directly.
*/