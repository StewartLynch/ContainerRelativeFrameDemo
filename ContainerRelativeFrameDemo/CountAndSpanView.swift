//
// Created for ContainerRelativeFrameDemo
// by  Stewart Lynch on 2024-05-11
//
// Follow me on Mastodon: @StewartLynch@iosdev.space
// Follow me on Threads: @StewartLynch (https://www.threads.net)
// Follow me on X: https://x.com/StewartLynch
// Follow me on LinkedIn: https://linkedin.com/in/StewartLynch
// Subscribe on YouTube: https://youTube.com/@StewartLynch
// Buy me a ko-fi:  https://ko-fi.com/StewartLynch


import SwiftUI

struct CountAndSpanView: View {
    var colors: [Color] = [.red, .green, .yellow, .blue, .cyan, .purple]
    var body: some View {
        ScrollView(.horizontal) {
            LazyHStack {
                ForEach(colors, id: \.self) { color in
                    color
                }
            }
        }
        .frame(height: 300)
    }
}

#Preview {
    CountAndSpanView()
}
