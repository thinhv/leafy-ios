import SwiftUI

struct TabItem: View {
    let image: String
    let text: String

    var body: some View {
        VStack {
            Image(systemName: image)
                .resizable()
                .frame(width: 24, height: 24)
            Text(text)
                .font(.caption)
                .fontWeight(.medium)
        }
    }
}

struct TabBarView: View {
    var body: some View {
        TabView {
            AchievementsView().tabItem { TabItem(image: "bolt", text: "Achievements") }
            NewsFeed().tabItem { TabItem(image: "leaf", text: "Feeds") }
            ProfileView().tabItem { TabItem(image: "person", text: "Profile") }
        }
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
