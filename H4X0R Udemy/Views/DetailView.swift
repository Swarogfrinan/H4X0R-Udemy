import WebKit
import SwiftUI

struct DetailView: View {
    let url : String?
    
    var body: some View {
        Webview(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.google.com")
    }
}

struct Webview: UIViewRepresentable {
    
    let urlString : String?
    
    func makeUIView(context: Context) -> Webview.UIViewType {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeString = urlString {
            if let url = URL(string: safeString) {
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
}
