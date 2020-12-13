import SwiftUI
import AVKit

struct MostLikedPlant: View {
    let feed = Feed(name: "Aubameyang", profileImage: "profile-image-7", image: "plant7", likes: 51, comments: 42, isLiked: true, time: "5 months")
    
    var body: some View {
        VStack(spacing: 8) {
            PlantFeedItem(likes: feed.likes, isLike: feed.isLiked,feedViewModel: PlantFeedItemViewModel(feed: feed))
                .padding(16)
        }
    }
}

struct PlantTimelapse: View {
    let player = AVPlayer(url:  URL(string: "https://users.metropolia.fi/~ngocd/plant-growth-1.mp4")!)
    
    @State var playerPaused = true
    
    var body: some View {
        VStack {
            VideoPlayer(player: player).frame(height: 300)
            HStack {
                Button(action: {
                    self.playerPaused.toggle()
                    self.playerPaused ? self.player.pause() : self.player.play()
                }) {
                    Image(systemName: playerPaused ? "play" : "pause").foregroundColor(Color("CareGuide")).padding(.top, 16)
                }
            }
        }.padding(16)
        
    }
}


struct AchievementsView: View {
    var body: some View {
        NavigationView {
            
            ScrollView {
                HStack(spacing: 8) {
                    Text("Timelapse Videos")
                        .font(.title2)
                        .fontWeight(.bold)
                    Image(systemName: "camera")
                        .foregroundColor(Color("CareGuide"))
                    Spacer()
                }
                .padding(16)
                
                PlantTimelapse()
                
                Color.gray.opacity(0.7)
                    .frame(height: 1)
                    .padding(.horizontal, 16)
                
                VStack {
                    
                    
                    HStack(spacing: 8) {
                        Text("Collected Plants")
                            .font(.title2)
                            .fontWeight(.bold)
                        Image(systemName: "leaf")
                            .foregroundColor(Color("CareGuide"))
                        Spacer()
                    }
                    .padding(16)
                    
                    HStack(spacing: 0) {
                        Circle()
                            .foregroundColor(Color("CareGuide"))
                            .frame(width: 20, height: 20)
                        Rectangle()
                            .foregroundColor(Color("background"))
                            .frame(width: 60, height: 8, alignment: .center)
                        ZStack {
                            Circle()
                                .frame(width: 50, height: 50)
                                .foregroundColor(Color("CareGuide"))
                            Text("3")
                                .foregroundColor(.white)
                                .font(.title)
                        }
                        .overlay(
                            HStack {
                                Image("small-plant-1")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 14, height: 14)
                                Image("small-plant-2")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 14, height: 14)
                                Image("small-plant-3")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 14, height: 14)
                            }
                            .offset(y: 40)
                        )
                        Rectangle()
                            .foregroundColor(Color("background"))
                            .frame(width: 30, height: 8, alignment: .center)
                        ZStack {
                            Circle()
                                .frame(width: 50, height: 50)
                                .foregroundColor(Color("CareGuide"))
                            Text("5")
                                .foregroundColor(.white)
                                .font(.title)
                        }
                        .overlay(
                            HStack {
                                Image("small-plant-4")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 14, height: 14)
                                Image("small-plant-5")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 14, height: 14)
                            }
                            .offset(y: 40)
                        )
                        
                        Rectangle()
                            .stroke(Color("background"), style: StrokeStyle(lineWidth: 2, dash: [4, 4]))
                            .frame(width: 70, height: 8, alignment: .center)
                        ZStack {
                            Circle()
                                .stroke(Color("CareGuide"), style: StrokeStyle(lineWidth: 2, dash: [4, 4]))
                                .frame(width: 50, height: 50)
                            Text("10")
                                .foregroundColor(Color("CareGuide"))
                                .font(.title)
                        }
                        Rectangle()
                            .stroke(Color("background"), style: StrokeStyle(lineWidth: 2, dash: [4, 4]))
                            .frame(width: 30, height: 8, alignment: .center)
                        Circle()
                            .foregroundColor(Color("CareGuide"))
                            .frame(width: 20, height: 20)
                    }
                    .padding(.bottom, 40)
                    
                    Color.gray.opacity(0.7)
                        .frame(height: 1)
                        .padding(.horizontal, 16)
                    
                    HStack(spacing: 8) {
                        Text("Plant Quiz")
                            .font(.title2)
                            .fontWeight(.bold)
                        Image(systemName: "text.book.closed")
                            .foregroundColor(Color("CareGuide"))
                            .padding(0)
                        Spacer()
                    }
                    .padding(16)
                    
                    HStack() {
                        VStack(alignment: .leading) {
                            Text("Date")
                                .bold()
                            Text("23 Sep 2020")
                            Text("Today")
                        }
                        Spacer()
                        VStack(alignment: .leading) {
                            Text("Result")
                                .bold()
                            Text("8 / 10")
                            Button("Start", action: {})
                        }
                        Spacer()
                        
                        VStack(alignment: .leading) {
                            Text("0")
                                .foregroundColor(.clear)
                            HStack() {
                                Image(systemName: "star.fill")
                                    .foregroundColor(Color("CareGuide"))
                                    .frame(width: 12, height: 12)
                                Image(systemName: "star.fill")
                                    .foregroundColor(Color("CareGuide"))
                                    .frame(width: 12, height: 12)
                                Image(systemName: "star.fill")
                                    .foregroundColor(Color("CareGuide"))
                                    .frame(width: 12, height: 12)
                                Image(systemName: "star.fill")
                                    .foregroundColor(Color("CareGuide"))
                                    .frame(width: 12, height: 12)
                                Image(systemName: "star")
                                    .foregroundColor(Color("CareGuide"))
                                    .frame(width: 12, height: 12)
                            }
                            Text("0").foregroundColor(.clear)
                        }
                    }.padding(16)
                    
                    Color.gray.opacity(0.7)
                        .frame(height: 1)
                        .padding(.horizontal, 16)
                    
                    HStack(spacing: 8) {
                        Text("Most Liked Plant")
                            .font(.title2)
                            .fontWeight(.bold)
                        Image(systemName: "hand.thumbsup")
                            .foregroundColor(Color("CareGuide"))
                        Spacer()
                    }
                    .padding(16)
                    
                    MostLikedPlant()
                }
            }
            .navigationTitle("Achievements")
        }
    }
}

struct AchievementsView_Previews: PreviewProvider {
    static var previews: some View {
        AchievementsView()
    }
}
