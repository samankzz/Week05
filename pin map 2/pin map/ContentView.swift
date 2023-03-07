/*
See the License.txt file for this sample’s licensing information.
*/

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        TabView {
            HomeView()
                .tabItem {
                    Label("Activity", systemImage: "figure.run")
                }

            MapView()
                .tabItem {
                    Label("Course", systemImage: "map")
                }
            
            Page3()
                .tabItem {
                    Label("Music", systemImage: "music.note.house.fill")
                }
            
            someView()
                .tabItem {
                    Label("My Location", systemImage: "pin")
                }
            
            
            
        
           
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
