import 'package:flutter/material.dart';

class PlaceCard extends StatelessWidget {
  final String url;
  final String name;
  final String city;
  final String country;

  PlaceCard({
    @required this.url,
    @required this.name,
    @required this.city,
    @required this.country,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
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
              name,
              style: TextStyle(
                fontSize: 18,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 5),
            child: Row(
              children: <Widget>[
                Text(
                  "$city, ",
                  style: TextStyle(
                    color: Colors.black26,
                  ),
                ),
                Text(
                  country,
                  style: TextStyle(
                    color: Colors.black26,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
