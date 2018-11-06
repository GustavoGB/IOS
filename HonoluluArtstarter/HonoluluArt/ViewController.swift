

import UIKit
import MapKit

class ViewController: UIViewController {
    @IBOutlet weak var mapView: MKMapView!
    
  override func viewDidLoad() {
    super.viewDidLoad()
    //set initial location
    //Honolulu Values
    let initialLocation = CLLocation(latitude: 21.282778, longitude: -157.829444)
    let regionRadius: CLLocationDistance = 1000
    func centerMapOnLocation(location: CLLocation) {
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate,
                                                                  regionRadius, regionRadius)
        mapView.setRegion(coordinateRegion, animated: true)
    }
    centerMapOnLocation(location: initialLocation)
    
    // show artwork on map
    let artwork = Artwork(title: "King David Kalakaua",
    locationName: "Waikiki Gateway Park",
    discipline: "Sculpture",
    coordinate: CLLocationCoordinate2D(latitude: 21.283921, longitude: -157.831661))
    mapView.addAnnotation(artwork)
  }
}

extension ViewController: MKMapViewDelegate {
    // 1 Gets called for every annotation you add to the map (just like tableView(_:cellForRowAt:) when working with table views), to return the view for each annotation.
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        // 2 Your app might use other annotations, like user location, so check that this annotation is and Artwork object. If it isn't, return nil to let the map view use its default annotation view
        guard let annotation = annotation as? Artwork else { return nil }
        // 3 To make markers appear, your create each view as an MKMarkerAnnotationView. Later in this tutorial, you’ll create MKAnnotationView objects, to display images instead of markers.
        let identifier = "marker"
        var view: MKMarkerAnnotationView
        // 4
        if let dequeuedView = mapView.dequeueReusableAnnotationView(withIdentifier: identifier)
            as? MKMarkerAnnotationView {
            dequeuedView.annotation = annotation
            view = dequeuedView
        } else {
            // 5
            view = MKMarkerAnnotationView(annotation: annotation, reuseIdentifier: identifier)
            view.canShowCallout = true
            view.calloutOffset = CGPoint(x: -5, y: 5)
            view.rightCalloutAccessoryView = UIButton(type: .detailDisclosure)
        }
        return view
    }
}


