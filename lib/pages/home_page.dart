import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/widgets/city_card.dart';
import 'package:travel_app/widgets/place_card.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavyBar(
        items: [
          BottomNavyBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
            activeColor: Colors.pinkAccent,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.location_on),
            title: Text('Location'),
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.star),
            title: Text('Favorite'),
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.person),
            title: Text('Profile'),
          ),
        ],
        onItemSelected: (index) {},
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 40,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: Text(
                        "Where do you want to go next?",
                        style: TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 30,
                          ),
                        ],
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.search),
                          hintText: "Search your place",
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Popular Cities",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 210,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  children: <Widget>[
                    CityCard(
                      url:
                          "https://i.pinimg.com/236x/26/ea/fc/26eafc0b14488fea03fa8fa9751203ff.jpg",
                      city: "Italy",
                      country: "France",
                    ),
                    CityCard(
                      url:
                          "https://www.plantbasednews.org/.image/c_limit%2Ccs_srgb%2Cq_auto:good%2Cw_700/MTcxOTE5ODgxODU4NDU4OTQ2/newyorkcity.webp",
                      city: "New York City",
                      country: "USA",
                    ),
                    CityCard(
                      url:
                          "https://images.barrons.com/im-86071?width=1260&size=1.5005861664712778",
                      city: "Seoul",
                      country: "South Korea",
                    ),
                    CityCard(
                      url:
                          "https://cdn.britannica.com/s:700x500/13/146313-050-DD9AAC27/India-War-Memorial-arch-New-Delhi-Sir.jpg",
                      city: "New Delhi",
                      country: "India",
                    ),
                    CityCard(
                      url:
                          "https://www.tripsavvy.com/thmb/7D4DfxOojuvisasIxvKMM_sRaZE=/950x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/where-is-singapore-dcc07b5514284c58bea037a9b7344568.jpg",
                      city: "Singapore",
                      country: "Singapore",
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 15,
                  horizontal: 40,
                ),
                child: Text(
                  "Popular Places",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              Container(
                height: 210,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  children: <Widget>[
                    PlaceCard(
                      url:
                          "https://cdn.britannica.com/s:700x500/36/162636-050-932C5D49/Colosseum-Rome-Italy.jpg",
                      name: "Colosseum",
                      city: "Italy",
                      country: "France",
                    ),
                    PlaceCard(
                      url:
                          "https://www.turbopass.com/3123-carousel/gondolas-on-the-grand-canal.jpg",
                      name: "Canal Grande",
                      city: "Venice",
                      country: "Italy",
                    ),
                    PlaceCard(
                      url:
                          "https://static.euronews.com/articles/stories/03/38/72/78/773x435_cmsv2_1ed38bef-579f-5b97-ab7c-3ac32334a1c7-3387278.jpg",
                      name: "Basilica",
                      city: "Barcelona",
                      country: "Spain",
                    ),
                    PlaceCard(
                      url:
                          "https://mediaindia.eu/wp-content/uploads/2020/01/sarang-pande-k3SHcT9zGkE-unsplash.jpg",
                      name: "Gateway of India",
                      city: "Mumbai",
                      country: "India",
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
