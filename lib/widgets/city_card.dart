import 'package:flutter/material.dart';

class CityCard extends StatelessWidget {
  final String url;
  final String city;
  final String country;

  CityCard({
    @required this.url,
    @required this.city,
    @required this.country,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 40,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 160,
            width: 140,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: NetworkImage(url),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.only(left: 5),
            child: Text(
              city,
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 5),
            child: Text(
              country,
              style: TextStyle(
                color: Colors.black26,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
