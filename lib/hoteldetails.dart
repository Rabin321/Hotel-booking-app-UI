import 'package:flutter/material.dart';

//for popular hotel 1
class Hoteldetails1 extends StatefulWidget {
  @override
  _Hoteldetails1State createState() => _Hoteldetails1State();
}

class _Hoteldetails1State extends State<Hoteldetails1> {
  @override
  Widget build(BuildContext context) {
    return Functionhoteldetails(
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0a/c7/c6/13/planet-bhaktapur-hotel.jpg?w=600&h=300&s=1',
      "Hotel Planet Bhaktapur",
      "Jhaukhel, Bhaktapur Nepal ",
      "Set amid a spacious lawn and boasting views of the surrounding landscape, Planet Bhaktapur Hotel is located just 0.6 mi from the city center and 6.2 mi from TIA.",
      "Rs 2000/night",
      "4.0",
      "Parking",
      Icons.local_parking,
      "Gym",
      Icons.fitness_center,
      "Wifi",
      Icons.wifi,
      "Security",
      Icons.security,
    );
  }
}

//for popular hotel 2
class Hoteldetails2 extends StatefulWidget {
  @override
  _Hoteldetails2State createState() => _Hoteldetails2State();
}

class _Hoteldetails2State extends State<Hoteldetails2> {
  @override
  Widget build(BuildContext context) {
    return Functionhoteldetails(
      'https://pix6.agoda.net/hotelImages/7806174/-1/0164596f8498aa9741979a2b07780b07.jpg?s=1024x768',
      "Hotel Paradise Inn",
      "Phewa Taal, Pokhara, Nepal ",
      "Located just 701 m from the scenic Lidder River, Hotel Paradise Inn operates a 24-hour front desk to assist guests at all hours. Free WiFi access is available.",
      "Rs 3000/night",
      "4.5",
      "Parking",
      Icons.local_parking,
      "Spa",
      Icons.spa,
      "Wifi",
      Icons.wifi,
      "Security",
      Icons.security,
    );
  }
}

//hoteldetailsfunction

class Functionhoteldetails extends StatelessWidget {
  final String image1;
  final String title1;
  final String title2;
  final String text1;
  // final String text2;
  final String rupeess1;
  final String rate1;
  final String amitext1;
  final IconData icon1;
  final String amitext2;
  final IconData icon2;
  final String amitext3;
  final IconData icon3;
  final String amitext4;
  final IconData icon4;

  Functionhoteldetails(
      this.image1,
      this.title1,
      this.title2,
      this.text1,
      // this.text2,
      this.rupeess1,
      this.rate1,
      this.amitext1,
      this.icon1,
      this.amitext2,
      this.icon2,
      this.amitext3,
      this.icon3,
      this.amitext4,
      this.icon4);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 9,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.indigo,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(24),
                    bottomRight: Radius.circular(24),
                  ),
                  image: DecorationImage(
                      image: NetworkImage(image1), fit: BoxFit.cover)),
              child: Stack(
                children: [
                  Positioned(
                      left: 12,
                      top: 23,
                      child: IconButton(
                        icon: Icon(
                          Icons.arrow_back_ios,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ))
                ],
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Padding(
              padding: const EdgeInsets.only(
                left: 16,
                top: 16,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title1,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      Text(
                        title2,
                        style: TextStyle(
                          color: Colors.blue[900],
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        "             Show in map",
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 15,
                        ),
                      ),
                      Icon(
                        Icons.location_on,
                        color: Colors.blue[800],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Text(
                    text1,
                    style: TextStyle(
                        color: Colors.blueGrey[800],
                        fontWeight: FontWeight.bold),
                  ),
                  // Text(
                  //   text2,
                  //   style: TextStyle(
                  //       color: Colors.blueGrey[800],
                  //       fontWeight: FontWeight.bold),
                  // ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Row(
                children: [
                  Expanded(
                    flex: 5,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Price",
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.deepOrange[700],
                              fontSize: 18),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          rupeess1,
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.green[800],
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                      flex: 3,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Reviews",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                color: Colors.deepOrange[700]),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Row(
                            children: [
                              Text(
                                rate1,
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w600),
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.green[700],
                                size: 18,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.green[700],
                                size: 18,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.green[700],
                                size: 18,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.green[700],
                                size: 18,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.grey[700],
                                size: 18,
                              ),
                            ],
                          )
                        ],
                      )),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Amenities",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 24,
                            width: 24,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(.3),
                                    blurRadius: 7,
                                    spreadRadius: 3,
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(5)),
                            child: Icon(icon1),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            amitext1,
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: Colors.deepOrange[700]),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            height: 24,
                            width: 24,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(.3),
                                    blurRadius: 7,
                                    spreadRadius: 3,
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(5)),
                            child: Icon(icon2),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            amitext2,
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: Colors.deepOrange[700]),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            height: 24,
                            width: 24,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(.3),
                                    blurRadius: 7,
                                    spreadRadius: 3,
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(5)),
                            child: Icon(icon3),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            amitext3,
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: Colors.deepOrange[700]),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            height: 24,
                            width: 24,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(.3),
                                    blurRadius: 7,
                                    spreadRadius: 3,
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(5)),
                            child: Icon(icon4),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            amitext4,
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: Colors.deepOrange[700]),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            height: 24,
                            width: 24,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(.3),
                                    blurRadius: 7,
                                    spreadRadius: 3,
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(5)),
                            child: Icon(Icons.more_horiz_sharp),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            "More",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: Colors.deepOrange[700]),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Container(
                    margin: EdgeInsets.all(19),
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(.6),
                            blurRadius: 9,
                            spreadRadius: 0,
                          )
                        ],
                        color: Colors.green[400],
                        borderRadius: BorderRadius.circular(50)),
                    child: Icon(
                      Icons.favorite_rounded,
                      color: Colors.red[600],
                      size: 51,
                    ),
                  ),
                ),
                Expanded(
                  flex: 8,
                  child: Container(
                    margin: EdgeInsets.only(
                        top: 21, bottom: 21, right: 16, left: 16),
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(.6),
                          blurRadius: 9,
                          spreadRadius: 0,
                        )
                      ],
                      color: Colors.green[500],
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Center(
                        child: Text(
                      "Book now",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    )),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
