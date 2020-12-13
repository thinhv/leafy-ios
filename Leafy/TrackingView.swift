import SwiftUI

struct TrackingView: View {
    
    var body: some View {
        VStack(spacing: 20){
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 150), spacing: 35)], spacing: 35) {
                ZStack(alignment: .bottom){
                    Rectangle()
                        .fill(Color.blue)
                        .frame(maxWidth: .infinity, maxHeight: 40)
                    
                    VStack {
                        Text("Water")
                            .font(.subheadline)
                            .fontWeight(.bold)
                        
                        Spacer()
                        
                        HStack(spacing: 10){
                            Spacer()
                            
                            Text("2")
                                .font(.title)
                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                .lineLimit(1)
                            
                            VStack(alignment: .leading){
                                Text("days")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .minimumScaleFactor(0.005)
                                    .lineLimit(1)
                                
                                Text("left")
                                    .font(.headline)
                                    .fontWeight(.bold)
                            }
                            .foregroundColor(Color.white.opacity(0.5))
                            
                            Spacer()
                        }
                        
                        Spacer()
                    }
                    .padding(.vertical, 20)
                }
                .frame(height: 200)
                .background(Color.blue.opacity(0.3))
                .clipShape(RoundedRectangle(cornerRadius: 20))
                
                ZStack(alignment: .bottom){
                    Rectangle()
                        .fill(Color.green)
                        .frame(maxWidth: .infinity, maxHeight: 120)
                    
                    VStack {
                        Text("Nutrients")
                            .font(.subheadline)
                            .fontWeight(.bold)
                        
                        Spacer()
                        
                        HStack(spacing: 10){
                            Spacer()
                            
                            Text("18")
                                .font(.title)
                                .fontWeight(.bold)
                                .lineLimit(1)
                            
                            VStack(alignment: .leading){
                                Text("days")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .minimumScaleFactor(0.005)
                                    .lineLimit(1)
                                
                                Text("left")
                                    .font(.headline)
                                    .fontWeight(.bold)
                            }
                            .foregroundColor(Color.white.opacity(0.5))
                            
                            Spacer()
                        }
                        
                        Spacer()
                    }
                    .padding(.vertical, 20)
                }
                .frame(height: 200)
                .background(Color.green.opacity(0.3))
                .clipShape(RoundedRectangle(cornerRadius: 20))
                
                ZStack(alignment: .bottom){
                    Rectangle()
                        .fill(Color.yellow)
                        .frame(maxWidth: .infinity, maxHeight: 40)
                    
                    VStack {
                        Text("Sunlight")
                            .font(.subheadline)
                            .fontWeight(.bold)
                        
                        Spacer()
                        
                        HStack(spacing: 10){
                            Spacer()
                            
                            Text("14")
                                .font(.title)
                                .fontWeight(.bold)
                                .lineLimit(1)
                            
                            VStack(alignment: .leading){
                                Text("hrs")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .minimumScaleFactor(0.005)
                                    .lineLimit(1)
                                
                                Text("left")
                                    .font(.headline)
                                    .fontWeight(.bold)
                            }
                            .foregroundColor(Color.white.opacity(0.5))
                            
                            Spacer()
                        }
                        
                        Spacer()
                    }
                    .padding(.vertical, 20)
                }
                .frame(height: 200)
                .background(Color.yellow.opacity(0.3))
                .clipShape(RoundedRectangle(cornerRadius: 20))
                
                ZStack(alignment: .bottom){
                    Rectangle()
                        .fill(Color.orange)
                        .frame(maxWidth: .infinity, maxHeight: 40)
                    
                    VStack {
                        Text("Repot")
                            .font(.subheadline)
                            .fontWeight(.bold)
                        
                        Spacer()
                        
                        HStack(spacing: 10){
                            Spacer()
                            
                            Text("34")
                                .font(.title)
                                .fontWeight(.bold)
                                .lineLimit(1)
                            
                            VStack(alignment: .leading){
                                Text("days")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .minimumScaleFactor(0.005)
                                    .lineLimit(1)
                                
                                Text("left")
                                    .font(.headline)
                                    .fontWeight(.bold)
                            }
                            .foregroundColor(Color.white.opacity(0.5))
                            
                            Spacer()
                        }
                        
                        Spacer()
                    }
                    .padding(.vertical, 20)
                }
                .frame(height: 200)
                .background(Color.orange.opacity(0.3))
                .clipShape(RoundedRectangle(cornerRadius: 20))
            }
        }
        .padding(.horizontal, 20)
    }
}
