//
//  InfoPage.swift
//  CoffeeMate
//
//  Created by Inesh Sekar on 13/07/23.
//

import SwiftUI
import WebKit
struct WebView:UIViewRepresentable{
    func makeUIView(context: Context) -> WKWebView {
           let webView=WKWebView()
            return webView
        }
        //to load any web app
        func updateUIView(_ webView: WKWebView, context: Context) {
            let url = URL(string: "https://ispayapp.onrender.com")!
           let request = URLRequest(url: url)
            webView.load(request)
        }
   
}
struct InfoPage: View {
    var body: some View {
       WebView()
    }
}

struct InfoPage_Previews: PreviewProvider {
    static var previews: some View {
        InfoPage()
    }
}
