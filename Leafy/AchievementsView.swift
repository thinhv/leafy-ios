import SwiftUI

struct AchievementsView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    HStack(spacing: 8) {
                        Text("Collected Plants")
                            .font(.title2)
                            .fontWeight(.bold)
                        Image(systemName: "leaf")
                            .foregroundColor(Color("CareGuide"))
                            .padding(0)
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

                    HStack(spacing: 32) {
                        VStack(alignment: .leading, spacing: 8) {
                            Text("Date")
                                .bold()
                            Text("23 Sep 2020")
                            Text("Today")
                        }

                        VStack(alignment: .leading, spacing: 8) {
                            Text("Result")
                                .bold()
                            Text("23 Sep 2020")
                            Button("Start", action: {})
                        }

                        VStack(alignment: .leading, spacing: 8) {
                            Text("0")
                                .foregroundColor(.clear)
                            Text("★★★★")
                            Text("0").foregroundColor(.clear)
                        }
                    }.padding(16)

                    Color.gray.opacity(0.7)
                        .frame(height: 1)
                        .padding(.horizontal, 16)
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
