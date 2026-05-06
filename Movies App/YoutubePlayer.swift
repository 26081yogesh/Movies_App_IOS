import SwiftUI
import YouTubeiOSPlayerHelper

struct YouTubePlayerView: UIViewRepresentable {

    let videoId: String

    func makeUIView(context: Context) -> YTPlayerView {
        let playerView = YTPlayerView()
        
        // Load video with options
        playerView.load(
            withVideoId: videoId,
            playerVars: [
                "playsinline": 1,
                "autoplay": 1,
                "controls": 1
            ]
        )
        
        return playerView
    }

    func updateUIView(_ uiView: YTPlayerView, context: Context) {
        // Nothing needed here for now
    }
}
