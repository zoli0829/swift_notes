// Closures are self-contained blocks of functionality that can be passed around and used in my code.

struct Student {
    let name: String
    var testScore: Int
}

let students: [Student] = [Student(name: "Alice", testScore: 84),
                           Student(name: "Bob", testScore: 92),
                           Student(name: "Zoltan", testScore: 86),
                           Student(name: "Jay", testScore: 69),
                           Student(name: "Bluntman", testScore: 77),
                           Student(name: "Richard", testScore: 65)
]

var topStudentFilter: (Student) -> Bool = { student in
    return student.testScore > 80
}

func topStudentFilterF(student: Student) -> Bool {
    return student.testScore > 70
}

// Shorthand
let topStudents = students.filter { $0.testScore > 80 }
let studentRanking = topStudents.sorted { $0.testScore > $1.testScore }

for topStudent in topStudents {
    print(topStudent.name)
}
