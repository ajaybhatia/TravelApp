import 'package:flutter/material.dart';
import 'package:travel_app/models/place_model.dart';

class PlaceDetail extends StatelessWidget {
  final Place place;

  PlaceDetail({this.place});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Hero(
        tag: place.name,
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(place.url),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.3),
                BlendMode.darken,
              ),
            ),
          ),
          child: Container(
            padding: EdgeInsets.only(
              left: 40,
              right: 40,
              top: 80,
            ),
            child: ListView(
              children: <Widget>[
                Text(
                  place.name,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: <Widget>[
                    for (int i = 0;
                        i < MediaQuery.of(context).size.width / 18;
                        i++)
                      Text(
                        '.  ',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.only(
                    right: 100,
                  ),
                  child: Text(
                    place.description,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
