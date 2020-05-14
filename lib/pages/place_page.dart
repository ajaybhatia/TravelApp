import 'package:flutter/material.dart';
import 'package:travel_app/models/city_model.dart';
import 'package:travel_app/pages/place_detail_page.dart';
import 'package:travel_app/widgets/place_card_big.dart';

class PlacePage extends StatelessWidget {
  final City city;

  PlacePage({this.city});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '${city.name}, ${city.country}',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: city.places
            .map(
              (place) => GestureDetector(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PlaceDetail(
                        place: place,
                      ),
                    )),
                child: PlaceCardBig(place: place),
              ),
            )
            .toList(),
      ),
    );
  }
}
