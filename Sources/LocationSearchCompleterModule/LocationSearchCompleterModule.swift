//
//  form-data-extension.swift
//  HTTPClientModule
//
//  Created by Cem Yilmaz on 14.12.21.
//

import MapKit

public class AddressSearchCompleter: NSObject, ObservableObject, MKLocalSearchCompleterDelegate {

    private let searchCompleter = MKLocalSearchCompleter()

    @Published public var searchResults: [MKLocalSearchCompletion] = []

    public override init() {
        super.init()
        self.searchCompleter.delegate = self
        self.searchCompleter.resultTypes = [
            MKLocalSearchCompleter.ResultType.address,
            MKLocalSearchCompleter.ResultType.pointOfInterest
        ]
    }

    public func search(searchText: String) {
        self.searchCompleter.queryFragment = searchText
    }

    public func completerDidUpdateResults(_ completer: MKLocalSearchCompleter) {
        DispatchQueue.main.async {
            self.searchResults = completer.results
        }
    }

}
