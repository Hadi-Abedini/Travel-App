class travelData {
  String? name;
  String? location;
  String? description;
  String? image;
  int distance;
  int temp;
  int tPrice;
  double rating;

  travelData({
    required this.name,
    required this.location,
    required this.distance,
    required this.temp,
    required this.rating,
    required this.description,
    required this.tPrice,
    required this.image,
  });
}

List<travelData> travelList = [
  travelData(
    name: 'London',
    location: 'England, Europe',
    distance: 50,
    temp: 26,
    rating: 4.9,
    tPrice: 1500,
    image: 'assets/images/london.jpg',
    description:
        'London is the capital and largest city of England and the United Kingdom, with a population of just over 9 million. It stands on the River Thames in south-east England at the head of a 50-mile (80 km) estuary down to the North Sea, and has been a major settlement for two millennia.',
  ),
  travelData(
    name: 'New York',
    location: 'USA, North America',
    distance: 45,
    temp: 32,
    rating: 4.5,
    tPrice: 2550,
    image: 'assets/images/newyork.jpg',
    description:
        "New York, often called New York City (NYC) to distinguish it from the State of New York, is the most populous city in the United States. With a 2020 population of 8,804,190 distributed over 300.46 square miles (778.2 km2), New York City is also the most densely populated major city in the United States. Located at the southern tip of the state of New York, the city is the center of the New York metropolitan area, the largest metropolitan area in the world by urban area. With over 20.1 million people in its metropolitan statistical area and 23.5 million in its combined statistical area as of 2020, New York is one of the world's most populous megacities. New York City is a global cultural, financial, and media center with a significant influence on commerce, entertainment, research, technology, education, politics, tourism, dining, art, fashion, and sports. It is the most photographed city in the world. Home to the headquarters of the United Nations, New York is an important center for international diplomacy, an established safe haven for global investors, and is sometimes described as the capital of the world.",
  ),
  travelData(
    name: 'Tehran',
    location: 'Iran, Asia',
    distance: 80,
    temp: 45,
    rating: 1.5,
    tPrice: 250,
    image: 'assets/images/tehran.jpg',
    description:
        "Tehran is a city in Tehran Province and the capital (most important city) of Iran. With a population of around 8.7 million in the city and 15 million in the larger metropolitan area of Greater Tehran, Tehran is the most populous city in Iran and Western Asia, and has the second-largest metropolitan area in the Middle East, after Cairo. It is ranked 24th in the world by metropolitan area population.",
  ),
  travelData(
    name: 'Isfahan',
    location: 'Iran, Asia',
    distance: 30,
    temp: 43,
    rating: 3.1,
    tPrice: 200,
    image: 'assets/images/isfahan.jpg',
    description:
        "Isfahan from its ancient designation Aspadana and, later, Spahan in middle Persian, rendered in English as Ispahan, is a major city in the Greater Isfahan Region, Isfahan Province, Iran. It is located 406 km (252 miles) south of Tehran and is the capital of Isfahan Province. The city has a population of approximately 1.9 million, making it the third-largest city in Iran, after Tehran and Mashhad, and the second-largest metropolitan area.",
  ),
  travelData(
    name: 'Semnan',
    location: 'Iran, Asia',
    distance: 5,
    temp: 38,
    rating: 0.5,
    tPrice: 50,
    image: 'assets/images/semnan.jpg',
    description:
        'Semnan  is the capital city of Semnan Province, situated on the alluvial fan of the Golrudbar creek in north central Iran, 216 km east of Tehran and 640 km west of Mashhad. With a population of 185,129 people, Semnan is the most populated city in Semnan Province and serves as the capital of it. The city is also the hub of the Semnani language, a sub-branch of the Iranian languages spoken to the north, and home to the Semnani ethnic group.',
  )
];
