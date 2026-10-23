import SwiftUI
import SwiftData

@main
struct TODOiOSLabApp: App {
    var body: some Scene {
        WindowGroup {
            if LabSettings.usesPersistence {
                PersistentTodoScreen()
                    .modelContainer(for: StoredTodo.self)
                    .tint(LabSettings.accentColor)
            } else {
                TodoScreen()
                    .tint(LabSettings.accentColor)
            }
        }
    }
}
