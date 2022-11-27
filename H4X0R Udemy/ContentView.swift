
import SwiftUI

struct ContentView: View {
    
   @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        
        VStack {
            NavigationView {
                List(networkManager.posts) { post in
                    Text(post.title)
                }
                .navigationBarTitle("H4X0R News")
            }
            .onAppear {
                self.networkManager.fetchData()
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
