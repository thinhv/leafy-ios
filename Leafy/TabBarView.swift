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
    @State var selection: Int = 1
    var body: some View {
        TabView(selection: $selection) {
            NewsFeed().tabItem { TabItem(image: "leaf", text: "Feeds") }.tag(0)
            ProfileView().tabItem { TabItem(image: "house", text: "Home") }.tag(1)
            AchievementsView().tabItem { TabItem(image: "bolt", text: "Achievements") }.tag(2)
        }
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
