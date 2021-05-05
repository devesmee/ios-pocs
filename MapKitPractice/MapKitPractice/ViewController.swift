//
//  ViewController.swift
//  MapKitPractice
//
//  Created by Student on 27/09/2019.
//  Copyright © 2019 Esmee Kluijtmans. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate, MKMapViewDelegate {

    @IBOutlet weak var theMap: MKMapView!
    
    var location: CLLocation!
    let locationManager = CLLocationManager()
    let charityMarker = MKPointAnnotation()
    let charityMarker2 = MKPointAnnotation()
    var pointAnnotation:CustomAnnotation!
    var pinAnnotationView:MKPinAnnotationView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        charityMarker.title = "Animal Shelter"
        charityMarker.coordinate = CLLocationCoordinate2D(latitude: 51.451550, longitude: 5.481820)
        charityMarker2.title = "Food Shelter"
        charityMarker2.coordinate = CLLocationCoordinate2D(latitude: 51.441540, longitude: 5.477096)
        pinAnnotationView = MKPinAnnotationView(annotation: charityMarker2, reuseIdentifier: "pin")
        
        theMap.addAnnotation(charityMarker)
        theMap.addAnnotation(charityMarker2)
        mapView(theMap, annotationView: pinAnnotationView)
       
    }

    @IBAction func zoomLocation(_ sender: Any) {
        let span = MKCoordinateSpan.init(latitudeDelta: 0.05, longitudeDelta: 0.05)
        let region = MKCoordinateRegion.init(center: (locationManager.location?.coordinate)!, span: span)
        theMap.setRegion(region, animated: true)
    }
    
    func mapView(_ mapView: MKMapView, annotationView view: MKAnnotationView) {
    print("test")
    }
}

