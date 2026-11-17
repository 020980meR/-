import SwiftUI
import WebKit

@main
struct Base44WrapperApp: App {
    var body: some Scene {
        WindowGroup {
            WebView(url: URL(string: "https://slim-track-viral-vibe.base44.app")!)
                .ignoresSafeArea()
        }
    }
}

struct WebView: UIViewRepresentable {
    let url: URL
    func makeUIView(context: Context) -> WKWebView {
        let webView = WKWebView()
        webView.load(URLRequest(url: url))
        return webView
    }
    func updateUIView(_ uiView: WKWebView, context: Context) {}
}
