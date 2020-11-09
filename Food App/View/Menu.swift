

import SwiftUI

struct Menu: View {
    @ObservedObject var homeData : HomeViewModel
    var body: some View {
        
        VStack{
            
            NavigationLink(destination: CartView(homeData: homeData)) {
                
                HStack(spacing: 15){
                    
                    Image(systemName: "cart")
                        .font(.title)
                        .foregroundColor(Color("pink"))
                    
                    Text("Cart")
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                    
                    Spacer(minLength: 0)
                }
                .padding()
            }
            
            Spacer()
            
            HStack{
                
                Spacer()
                
                Text("This is a starting template from the internet Credits to Balaji")
                    .fontWeight(.bold)
                    .foregroundColor(Color("pink"))
            }
            .padding(10)
        }
        .padding([.top,.trailing])
        .frame(width: UIScreen.main.bounds.width / 1.6)
        .background(Color.white.ignoresSafeArea())
    }
}

