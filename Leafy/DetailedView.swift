import SwiftUI

struct DetailedView: View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @Binding var rootIsActive: Bool
    var body: some View {
        VStack(alignment: .leading){
            ImageSliderView()
            
            ScrollView(.vertical, showsIndicators: false){
                VStack(alignment: .leading){
                    Text("Swiss cheese plant")
                        .font(.title)
                        .fontWeight(.semibold)
                        .padding(.top, 30)
                    
                    Text("Monstera delicious")
                        .font(.body)
                        .fontWeight(.bold)
                        .foregroundColor(.gray)
                        .padding(.top, 10)
                    
                    Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit.")
                        .font(.body)
                        .foregroundColor(.gray)
                    
                    LazyHGrid(rows: [GridItem(.adaptive(minimum: 80))], spacing: 16){
                        RoundedRectangle(cornerRadius: 20)
                            .fill(Color("CareGuide"))
                            .frame(width: 80, height: 140, alignment: .center)
                            .overlay(
                                VStack{
                                    Text("Water")
                                        .fontWeight(.bold)
                                        .font(.system(size: 15))
                                    
                                    Image(systemName: "drop.triangle.fill")
                                        .font(.title2)
                                    
                                    Text("every")
                                        .fontWeight(.bold)
                                        .font(.system(size: 15))
                                        .padding(.top, 10)
                                    
                                    Text("7 days")
                                        .fontWeight(.semibold)
                                        .font(.subheadline)
                                }
                                .foregroundColor(.white)
                            )
                        
                        RoundedRectangle(cornerRadius: 20)
                            .fill(Color("CareGuide"))
                            .frame(width: 80, height: 140, alignment: .center)
                            .overlay(
                                VStack{
                                    Text("Humidity")
                                        .fontWeight(.bold)
                                        .font(.system(size: 15))
                                    
                                    Image(systemName: "wind")
                                        .font(.title2)
                                    
                                    Text("upto")
                                        .fontWeight(.bold)
                                        .font(.system(size: 15))
                                        .padding(.top, 10)
                                    
                                    Text("82%")
                                        .fontWeight(.semibold)
                                        .font(.subheadline)
                                }
                                .foregroundColor(.white)
                            )
                        
                        RoundedRectangle(cornerRadius: 20)
                            .fill(Color("CareGuide"))
                            .frame(width: 80, height: 140, alignment: .center)
                            .overlay(
                                VStack{
                                    Text("Size")
                                        .fontWeight(.bold)
                                        .font(.system(size: 15))
                                    
                                    Image(systemName: "drop.triangle.fill")
                                        .font(.title2)
                                    
                                    Text("height")
                                        .fontWeight(.bold)
                                        .font(.system(size: 15))
                                        .padding(.top, 10)
                                    
                                    Text("38\" - 48\"")
                                        .fontWeight(.semibold)
                                        .font(.subheadline)
                                }
                                .foregroundColor(.white)
                            )
                        
                        RoundedRectangle(cornerRadius: 20)
                            .fill(Color("CareGuide"))
                            .frame(width: 80, height: 140, alignment: .center)
                            .overlay(
                                VStack{
                                    Text("Location")
                                        .fontWeight(.bold)
                                        .font(.system(size: 15))
                                    
                                    Image(systemName: "house.fill")
                                        .font(.title2)
                                    
                                    Text("shaded")
                                        .fontWeight(.bold)
                                        .font(.system(size: 15))
                                        .padding(.top, 10)
                                    
                                    Text("Indoors")
                                        .fontWeight(.semibold)
                                        .font(.subheadline)
                                }
                                .foregroundColor(.white)
                            )
                    }
                }
                
            
            }
            .padding(.horizontal, 20)
        }
        .edgesIgnoringSafeArea(.all)
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading:
                                Button(action: {
                                    self.presentationMode.wrappedValue.dismiss()
                                }) {
                                    Image(systemName: "chevron.left")
                                        .font(Font.title2.bold())
                                        .foregroundColor(Color("CareGuide"))
                                }
        )
    }
}

struct CustomShape: Shape {
    var leftCorner: UIRectCorner
    var rightCorner: UIRectCorner
    var radii: CGFloat
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [leftCorner, rightCorner], cornerRadii: CGSize(width: radii, height: radii))
        
        return Path(path.cgPath)
    }
}
