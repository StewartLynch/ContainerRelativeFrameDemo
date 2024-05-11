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

struct ImageScrollView: View {
    var body: some View {
        ScrollView(.horizontal) {
            LazyHStack {
                ForEach(1..<10, id: \.self) { index in
                    Image("image\(index)")
                       .resizable()
                        .aspectRatio(3 / 2, contentMode: .fit)
                        .containerRelativeFrame(.horizontal, count: 4, span: 3,  spacing: 10.0)
                }
            }
        }
        .frame(height: 300)
    }
}

#Preview {
    ImageScrollView()
}
