import 'package:travel_app/models/place_model.dart';

class City {
  final String url;
  final String name;
  final List<Place> places;
  final String country;

  City({
    this.url,
    this.name,
    this.country,
    this.places,
  });
}
