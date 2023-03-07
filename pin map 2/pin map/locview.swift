import SwiftUI


struct someView: View {
    @StateObject var locationDataManager = LocationDataManager()
    
    var body: some View {
            VStack {
                switch locationDataManager.locationManager.authorizationStatus {
                case .authorizedWhenInUse:  // Location services are available.
                    // Insert code here of what should happen when Location services are authorized
                    Text("Your current location is:")
                    Text("Latitude: \(locationDataManager.locationManager.location?.coordinate.latitude.description ?? "Error loading")")
                    Text("Longitude: \(locationDataManager.locationManager.location?.coordinate.longitude.description ?? "Error loading")")
                    
                case .restricted, .denied:  // Location services currently unavailable.
                    // Insert code here of what should happen when Location services are NOT authorized
                    Text("Current location data was restricted or denied.")
                case .notDetermined:        // Authorization not determined yet.
                    Text("Finding your location...")
                    ProgressView()
                default:
                    ProgressView()
                }
            }
        }
    }

struct someView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

