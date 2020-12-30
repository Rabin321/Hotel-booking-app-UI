import 'package:flutter/material.dart';

class Hotpackagefunction extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;
  final String rupees;

  Hotpackagefunction(this.image, this.title, this.subtitle, this.rupees);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 12, right: 12, bottom: 12),
      height: MediaQuery.of(context).size.height / 5.1,
      decoration: BoxDecoration(
          color: Colors.black.withOpacity(.12),
          borderRadius: BorderRadius.circular(12),
          boxShadow: [BoxShadow(color: Colors.black.withOpacity(.12))]),
      child: Row(
        children: [
          Expanded(
            flex: 5,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12),
                  bottomLeft: Radius.circular(12),
                ),
                image: DecorationImage(
                  image: NetworkImage(image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 8,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 19),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Row(
                    children: [
                      // Icon(
                      //   Icons.location_on,
                      //   color: Colors.blue[900],
                      // ),
                      Text(
                        subtitle,
                        style: TextStyle(color: Colors.blue[900], fontSize: 16),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Text(
                    rupees,
                    style: TextStyle(
                        color: Colors.green[900], fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 9,
                  ),
                  Container(
                    height: 45,
                    child: Row(
                      children: [
                        Expanded(
                            flex: 1,
                            child: Container(
                              margin: EdgeInsets.all(4),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                color: Colors.white.withOpacity(.7),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black,
                                    blurRadius: 5,
                                  ),
                                ],
                              ),
                              child: Center(
                                  child: Icon(
                                Icons.local_taxi,
                                color: Colors.redAccent,
                              )),
                            )),
                        Expanded(
                            flex: 1,
                            child: Container(
                              margin: EdgeInsets.all(4),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                color: Colors.white.withOpacity(.7),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black,
                                    blurRadius: 5,
                                  ),
                                ],
                              ),
                              child: Center(
                                  child: Icon(
                                Icons.wifi,
                                color: Colors.redAccent,
                              )),
                            )),
                        Expanded(
                            flex: 1,
                            child: Container(
                              margin: EdgeInsets.all(4),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                color: Colors.white.withOpacity(.7),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black,
                                    blurRadius: 5,
                                  ),
                                ],
                              ),
                              child: Center(
                                  child: Icon(
                                Icons.airplanemode_active,
                                color: Colors.redAccent,
                              )),
                            )),
                        Expanded(
                            flex: 1,
                            child: Container(
                              margin: EdgeInsets.all(4),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                color: Colors.white.withOpacity(.7),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black,
                                    blurRadius: 5,
                                  ),
                                ],
                              ),
                              child: Center(
                                  child: Icon(
                                Icons.alarm,
                                color: Colors.redAccent,
                              )),
                            )),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              margin: EdgeInsets.only(left: 8, right: 0, top: 2, bottom: 2),
              decoration: BoxDecoration(
                  color: Colors.green[700],
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 6,
                    )
                  ]),
              child: Center(
                child: RotatedBox(
                  child: Text(
                    "Book now",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  quarterTurns: 3,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
