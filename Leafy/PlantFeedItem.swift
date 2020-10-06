import SwiftUI

class PlantFeedItemViewModel: ObservableObject {
    let name: String
    let image: String
    let profileImage: String
    let comments: Int
    let time: String

    @Published var likes = 0
    @Published var isLiked: Bool

    init(feed: Feed) {
        time = feed.time
        likes = feed.likes
        comments = feed.comments
        isLiked = feed.isLiked
        name = feed.name
        image = feed.image
        profileImage = feed.profileImage
    }

    func toggleLike() {
        isLiked = !isLiked
    }
}

struct PlantFeedItem: View {

    @State var likes: Int
    @State var isLike: Bool
    @State var feedViewModel: PlantFeedItemViewModel

    var body: some View {
        VStack {
            HStack(spacing: 12) {
                Image(feedViewModel.profileImage)
                    .resizable()
                    .frame(width: 30, height: 30)
                    .mask(Circle())
                Text(feedViewModel.name)
                Spacer()
            }
            .padding(.horizontal, 8)

            ZStack(alignment: Alignment(horizontal: .trailing, vertical: .top)) {
                Image(feedViewModel.image)
                    .resizable()
                    .scaledToFit()

                HStack {
                    Spacer()
                    Text(feedViewModel.time)
                        .foregroundColor(Color.black)
                        .padding(8)
                        .background(Capsule().foregroundColor(Color.white))
                }
                .padding(.top, 8)


                .padding(.horizontal, 8)
            }
            HStack(spacing: 20) {
                Button(
                    action: {
                        self.isLike.toggle()
                    },
                    label: {
                        HStack(spacing: 8) {
                            Image(systemName: self.isLike ? "suit.heart.fill" : "suit.heart")
                                .resizable()
                                .frame(width: 20, height: 20)
                                .foregroundColor(Color("CareGuide").opacity(0.8))
                            Text("\(self.isLike ? self.likes + 1 : self.likes)")
                                .font(.body)
                                .foregroundColor(Color("CareGuide"))
                        }
                })

                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    HStack(spacing: 8) {
                        Image(systemName: "message")
                            .resizable()
                            .frame(width: 20, height: 20)
                            .foregroundColor(Color("CareGuide").opacity(0.8))
                        Text("\(feedViewModel.comments)")
                            .font(.body)
                            .foregroundColor(Color("CareGuide"))
                    }
                })
                Spacer()
            }
            .padding(.leading, 12)
        }

    }
}

struct PlantFeedItem_Previews: PreviewProvider {
    static var previews: some View {
        PlantFeedItem(likes: 0, isLike: true, feedViewModel: PlantFeedItemViewModel(feed: feeds.first!))
    }
}
