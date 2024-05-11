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

struct RelativeSizingView: View {
    let screenWidth = UIScreen.main.bounds.size.width
    let screenHeight = UIScreen.main.bounds.size.height
    var body: some View {
//        Color.red
//            .frame(width: screenWidth / 2, height: screenHeight / 2)
//        GeometryReader { proxy in
//            Color.red
//                .frame(width: proxy.size.width / 2, height: proxy.size.height / 2)
//        }
//        Color.red
//            .containerRelativeFrame([.horizontal, .vertical]) { dimension, _ in
//                dimension / 2
//            }
        Color.red
            .containerRelativeFrame([.horizontal, .vertical]) { dimension, axis in
                if axis == .horizontal {
                    dimension * 2 / 3
                } else {
                    dimension / 2
                }
            }
    }
}

#Preview {
    RelativeSizingView()
}
