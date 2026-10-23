import Foundation

// Equivale aproximadamente a un data class de Kotlin.
// Identifiable le permite a SwiftUI distinguir cada tarea aunque compartan título.
struct Todo: Identifiable {
    let id = UUID()
    var title: String
    var isDone = false

    static let examples = [
        Todo(title: "Explorar Xcode"),
        Todo(title: "Ejecutar mi primera app"),
        Todo(title: "Personalizar mi laboratorio")
    ]
}
