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

struct MoreRelativeSizing: View {
    let screenWidth = UIScreen.main.bounds.size.width
    let ratio = 0.33333
    var body: some View {
        ScrollView(.horizontal){
            HStack(spacing: 0) {
                Color.green
                    .containerRelativeFrame(.horizontal) { dimension, _ in
                        dimension * ratio
                    }
                Color.blue
                    .containerRelativeFrame(.horizontal) { dimension, _ in
                        dimension * (1 - ratio)
                    }
            }
        }
        .padding()
        .frame(height: 150)
        .scrollDisabled(true)
    }
}

#Preview {
    MoreRelativeSizing()
}
