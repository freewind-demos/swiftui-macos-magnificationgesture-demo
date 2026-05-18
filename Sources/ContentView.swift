import SwiftUI

struct ContentView: View {
    @State private var scale = 1.0

    var body: some View {
        VStack(spacing: 16) {
            RoundedRectangle(cornerRadius: 22)
                .fill(.pink.gradient)
                .frame(width: 180, height: 180)
                .scaleEffect(scale)
                .gesture(
                    MagnificationGesture()
                        .onChanged { value in
                            scale = value
                        }
                )

            Text("当前缩放 \(scale, specifier: "%.2f")x")
                .foregroundStyle(.secondary)
        }
        .padding()
    }
}
