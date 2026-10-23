import Foundation
import SwiftData

// SwiftData está incluido en el SDK de Apple. No se descarga ningún paquete.
@Model
final class StoredTodo {
    var title: String
    var isDone: Bool
    var createdAt: Date

    init(title: String) {
        self.title = title
        self.isDone = false
        self.createdAt = Date()
    }
}
