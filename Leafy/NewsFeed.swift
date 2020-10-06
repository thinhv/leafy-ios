import SwiftUI

struct NewsFeed: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 8) {
                    ForEach(feeds) { feed in
                        PlantFeedItem(likes: feed.likes, isLike: feed.isLiked,feedViewModel: PlantFeedItemViewModel(feed: feed))
                            .padding(.bottom, 8)
                    }
                }

            }
            .navigationTitle("News feed")
        }
    }
}

struct NewFeeds_Previews: PreviewProvider {
    static var previews: some View {
        NewsFeed()
    }
}
