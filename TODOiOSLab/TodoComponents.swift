import SwiftUI

// Componentes preparados: no necesitas modificarlos para completar el laboratorio.
struct LabHeader: View {
    let remainingCount: Int
    let totalCount: Int
    let storageLabel: String

    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Label("MI PRIMERA APP iOS", systemImage: LabSettings.symbolName)
                .font(.caption.weight(.bold))
                .foregroundStyle(LabSettings.accentColor)
            Text("Hecha por \(LabSettings.ownerName)")
                .font(.title2.bold())
                .accessibilityIdentifier("ownerLabel")
            Text("\(remainingCount) de \(totalCount) pendientes")
                .font(.headline)
                .accessibilityIdentifier("remainingLabel")
            Text(storageLabel)
                .font(.caption)
                .foregroundStyle(.secondary)
        }
        .padding(.vertical, 8)
    }
}

struct TodoRow: View {
    let title: String
    let isDone: Bool
    let onToggle: () -> Void
    let onDelete: () -> Void

    var body: some View {
        HStack(spacing: 12) {
            Button(action: onToggle) {
                Image(systemName: isDone ? "checkmark.circle.fill" : "circle")
                    .font(.title2)
            }
            .buttonStyle(.borderless)
            .accessibilityLabel(isDone ? "Marcar pendiente: \(title)" : "Completar: \(title)")
            Text(title)
                .strikethrough(isDone)
                .foregroundStyle(isDone ? .secondary : .primary)
                .frame(maxWidth: .infinity, alignment: .leading)
            Button(role: .destructive, action: onDelete) {
                Image(systemName: "trash")
            }
            .buttonStyle(.borderless)
            .accessibilityLabel("Eliminar: \(title)")
        }
        .padding(.vertical, 4)
    }
}
