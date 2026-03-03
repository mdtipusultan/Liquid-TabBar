import SwiftUI

struct LiquidGlassTabView: View {
    @State private var selectedTab = 0
    
    var body: some View {
        TabView(selection: $selectedTab) {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house.fill")
                }
                .tag(0)
            
            ImageGeneratorView()
                .tabItem {
                    Label("Image", systemImage: "sparkles")
                }
                .tag(1)
            
            VideoView()
                .tabItem {
                    Label("Video", systemImage: "video.fill")
                }
                .tag(2)
        }
        .tint(.yellow) // Set your accent color
    }
}

// MARK: - Placeholder Views
struct HomeView: View {
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            VStack {
                Image(systemName: "house.fill")
                    .font(.system(size: 60))
                    .foregroundColor(.yellow)
                Text("Home")
                    .foregroundColor(.white)
                    .font(.title)
            }
        }
    }
}

struct ImageGeneratorView: View {
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            VStack {
                Image(systemName: "sparkles")
                    .font(.system(size: 60))
                    .foregroundColor(.white)
                Text("Image")
                    .foregroundColor(.white)
                    .font(.title)
            }
        }
    }
}

struct VideoView: View {
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            VStack {
                Image(systemName: "video.fill")
                    .font(.system(size: 60))
                    .foregroundColor(.white)
                Text("Video")
                    .foregroundColor(.white)
                    .font(.title)
            }
        }
    }
}


#Preview {
    LiquidGlassTabView()
}
