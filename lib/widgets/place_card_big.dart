import 'package:flutter/material.dart';
import 'package:travel_app/models/place_model.dart';

class PlaceCardBig extends StatelessWidget {
  final Place place;

  PlaceCardBig({this.place});

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: place.name,
      child: Container(
        margin: EdgeInsets.symmetric(
          horizontal: 40,
          vertical: 10,
        ),
        height: 160,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: NetworkImage(place.url),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.3),
              BlendMode.darken,
            ),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              place.name,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
