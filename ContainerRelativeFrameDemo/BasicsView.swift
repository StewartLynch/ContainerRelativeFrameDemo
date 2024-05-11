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

struct BasicsView: View {
    var body: some View {
            TabView {
                Color.red
                    .frame(width: 200, height: 300)
                    .containerRelativeFrame([.horizontal, .vertical], alignment: .topLeading)
            }
            .frame(width: 300, height: 400)
            .border(.green)
    }
}

#Preview {
    BasicsView()
}
