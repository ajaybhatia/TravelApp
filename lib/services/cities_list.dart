import 'package:travel_app/models/city_model.dart';
import 'package:travel_app/models/place_model.dart';

List<City> cities = [
  City(
    url:
        "https://i.pinimg.com/236x/26/ea/fc/26eafc0b14488fea03fa8fa9751203ff.jpg",
    name: "Italy",
    country: "France",
    places: [
      Place(
        url:
            "https://cdn.britannica.com/s:700x500/36/162636-050-932C5D49/Colosseum-Rome-Italy.jpg",
        name: "Colosseum",
        description:
            "The Colosseum or Coliseum, also known as the Flavian Amphitheatre, is an oval amphitheatre in the centre of the city of Rome, Italy. Built of travertine limestone, tuff, and brick-faced concrete, it was the largest amphitheatre ever built at the time and held 50,000 to 80,000 spectators.",
      ),
      Place(
        url:
            "https://www.turbopass.com/3123-carousel/gondolas-on-the-grand-canal.jpg",
        name: "Canal Grande",
        description:
            "The Grand Canal is a channel in Venice, Italy. It forms one of the major water-traffic corridors in the city.",
      ),
    ],
  ),
  City(
    url:
        "https://www.plantbasednews.org/.image/c_limit%2Ccs_srgb%2Cq_auto:good%2Cw_700/MTcxOTE5ODgxODU4NDU4OTQ2/newyorkcity.webp",
    name: "New York City",
    country: "USA",
    places: [
      Place(
        url:
            "https://cdn.britannica.com/66/154566-050-36E73C15/Times-Square-New-York-City.jpg",
        name: "Time Square",
        description:
            "Times Square is a major commercial intersection, tourist destination, entertainment center, and neighborhood in the Midtown Manhattan section of New York City, at the junction of Broadway and Seventh Avenue.",
      ),
      Place(
        url:
            "http://momsanity.com/wp-content/uploads/2017/07/WhyNYCIsTheBest.jpg",
        name: "Statue of Liberty",
        description:
            "The Statue of Liberty is a colossal neoclassical sculpture on Liberty Island in New York Harbor in New York, in the United States.",
      ),
    ],
  ),
  City(
      url:
          "https://images.barrons.com/im-86071?width=1260&size=1.5005861664712778",
      name: "Seoul",
      country: "South Korea",
      places: [
        Place(
          url:
              "https://lp-cms-production.imgix.net/2019-06/2a82f3d7d66657d57150e6ec98a102e4-gyeongbokgung.jpg?auto=compress&crop=center&fit=crop&format=auto&h=416&q=45&w=960",
          name: "Gyeongbokgung Palace",
          description: "",
        ),
        Place(
          url:
              "https://afar-production.imgix.net/uploads/images/post_images/images/pC6AqfqhbX/original_c83374bd76b7e8c6ff0805185abf31f0.jpg?1522084869?ixlib=rails-0.3.0&auto=format%2Ccompress&crop=entropy&fit=crop&h=719&q=80&w=954",
          name: "Seoul Tower",
          description:
              "Gyeongbokgung, also known as Gyeongbokgung Palace or Gyeongbok Palace, was the main royal palace of the Joseon dynasty. Built in 1395, it is located in northern Seoul, South Korea.",
        ),
      ]),
  City(
    url:
        "https://cdn.britannica.com/s:700x500/13/146313-050-DD9AAC27/India-War-Memorial-arch-New-Delhi-Sir.jpg",
    name: "New Delhi",
    country: "India",
    places: [
      Place(
        url:
            "https://www.holidify.com/images/cmsuploads/compressed/Delhi_Red_fort_20190312151147.jpg",
        name: "Red Fort",
        description:
            "The Red Fort is a historic fort in the city of Delhi in India that served as the main residence of the Mughal Emperors. Emperor Shah Jahan commissioned construction of the Red Fort on 12 May 1638, when he decided to shift his capital from Agra to Delhi.",
      ),
      Place(
        url:
            "https://static.toiimg.com/thumb/33784981/Qutab-Minar.jpg?width=650&height=433&resize=true&resizeMode=5",
        name: "Qutab Minar",
        description:
            "The Qutb Minar, also spelled as Qutub Minar and Qutab Minar, is a minaret and 'victory tower' that forms part of the Qutb complex, a UNESCO World Heritage Site in the Mehrauli area of Delhi, India. Qutb Minar was 73-metres tall before the final, fifth section was added after 1369.",
      ),
    ],
  ),
];
