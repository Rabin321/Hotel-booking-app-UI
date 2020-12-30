import 'package:flutter/material.dart';
import 'package:hotelbookingapp/hotpackagefunction.dart';

import 'hoteldetails.dart';

class Mainpage extends StatefulWidget {
  @override
  _MainpageState createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  int currentindex = 0;
  TextEditingController _textEditingController = TextEditingController();
  Widget _buildBottomNavBar() {
    return BottomNavigationBar(
      elevation: 9,
      currentIndex: currentindex,
      type: BottomNavigationBarType.fixed,
      onTap: (newValue) {
        setState(() {
          currentindex = newValue;
        });
      },
      selectedItemColor: Colors.green[700],
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: ("Home")),
        BottomNavigationBarItem(icon: Icon(Icons.explore), label: ("Explore")),
        BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ("Trips")),
        BottomNavigationBarItem(
            icon: Icon(Icons.account_circle), label: ("Profile")),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SafeArea(top: true, left: true, right: true, child: Container()),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 4,
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
                  Expanded(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Hello there!",
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w600,
                                fontSize: 22),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            "Find your Hotel",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 24),
                          ),
                        ],
                      ),
                      Container(
                        height: 42,
                        width: 42,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(10)),
                      )
                    ],
                  )),
                  Expanded(
                      child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 0, vertical: 15),
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(19),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 14),
                    child: Center(
                      child: TextField(
                        controller: _textEditingController,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Search Hotels",
                            icon: Icon(
                              Icons.search,
                              color: Colors.grey[700],
                            ),
                            hintStyle: TextStyle(
                              fontSize: 18,
                              color: Colors.grey[700],
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                    ),
                  )),
                ],
              ),
            ),
            SizedBox(
              height: 0,
            ),
            Container(
              height: MediaQuery.of(context).size.height / 2.7,
              padding: EdgeInsets.only(left: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      flex: 1,
                      child: Text(
                        "Popular Hotels",
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.w700),
                      )),
                  Expanded(
                      flex: 7,
                      child: ListView(
                        padding: EdgeInsets.zero,
                        scrollDirection: Axis.horizontal,
                        children: [
                          //for 1st hotel in popular hotel
                          Columnpopular(
                              'https://media-cdn.tripadvisor.com/media/photo-w/0a/c7/c6/13/planet-bhaktapur-hotel.jpg',
                              'Planet Hotel Bhaktapur',
                              'Jhaukhel, Bhaktapur, Nepal',
                              'Rs 2000/night',
                              '4.0',
                              Icons.star,
                              () => Hoteldetails1()),
                          // for 2nd hotel in popular hotel
                          Columnpopular(
                              'https://pix10.agoda.net/hotelImages/7806174/-1/f261b34599ee7798e49f90d881258e83.jpg?s=1024x768',
                              'Hotel Paradise Inn',
                              'Phewa Taal, Pokhara, Nepal',
                              'Rs 3000/night',
                              '4.5',
                              Icons.star,
                              () => Hoteldetails2()),
                          // for 3rd hotel in popular hotel
                          Columnpopular(
                              'https://lh3.googleusercontent.com/p/AF1QipP8yyev93Be2i9zpAZliaEgEGI-pdLzONZsjohQ=w296-h202-n-k-no-v1-rj',
                              'Rupakot Resort Pvt.Ltd',
                              'Rupakot, Pokhara, Nepal',
                              'Rs 2800/night',
                              '4.3',
                              Icons.star,
                              () => Hoteldetails1()),
                          // for 4th hotel in popular hotel
                          Columnpopular(
                              'https://media-cdn.tripadvisor.com/media/photo-w/17/ea/dd/61/view-from-the-balcony.jpg',
                              'Hotel Country Villa',
                              'Naldum road, Nagarkot, Nepal',
                              'Rs 2000/night',
                              '4.2',
                              Icons.star,
                              () => Hoteldetails2()),
                          // for 5th hotel in popular hotel
                          Columnpopular(
                              'https://media-cdn.tripadvisor.com/media/photo-w/19/8f/6a/fb/main-courtyard.jpg',
                              'Gokarna Forest Resort',
                              'Kageswari Manohara, Kathmandu, Nepal',
                              'Rs 4000/night',
                              '4.5',
                              Icons.star,
                              () => Hoteldetails2()),
                        ],
                      ))
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height / 3.4,
              child: Column(
                children: [
                  Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Hot Packages",
                              style: TextStyle(
                                fontSize: 21,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "View All",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.green[700]),
                            ),
                          ],
                        ),
                      )),
                  Expanded(
                      flex: 7,
                      child: ListView(
                        padding: EdgeInsets.zero,
                        children: [
                          Hotpackagefunction(
                            // function calling =>Hotpackagefunction of hotpackagefunction.dart page.short code.
                            'https://lh3.googleusercontent.com/p/AF1QipOee_GSsxSOPKV5FQt8Kjw-2O-biuvs8qzhu6iz=w296-h202-n-k-no-v1-rj',
                            'Waterfront Resort',
                            'Pokhara, Nepal',
                            'Rs 6000/week',
                          ),
                          Hotpackagefunction(
                              'https://cf.bstatic.com/images/hotel/max1024x768/264/264203809.jpg',
                              'Himalayan Sunrise',
                              'Dhulikhel, Nepal',
                              'Rs 50000/21 nights'),
                          Container(
                            margin: EdgeInsets.only(
                                left: 12, right: 12, bottom: 12),
                            height: MediaQuery.of(context).size.height / 5.4,
                            child: Placeholder(),
                          ),
                        ],
                      )),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: _buildBottomNavBar(),
    );
  }
}

//function
class Columnpopular extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;
  final String rupees;
  final String rate;
  final IconData icon;
  final Function ontapfunction;

  Columnpopular(this.image, this.title, this.subtitle, this.rupees, this.rate,
      this.icon, this.ontapfunction);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return ontapfunction();
        }));
      },
      child: Container(
        margin: EdgeInsets.only(right: 16, top: 8, bottom: 18),
        width: 150,
        decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(17), boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(.22),
            blurRadius: 3,
            spreadRadius: 4,
          ),
        ]),
        child: Column(
          children: [
            Expanded(
                flex: 9,
                child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(image), fit: BoxFit.cover),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(16),
                          topRight: Radius.circular(16))),
                )),
            Expanded(
                flex: 6,
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(title,
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          )),
                      Text(subtitle,
                          style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              color: Colors.indigo)),
                      Row(
                        children: <Widget>[
                          Text(rupees,
                              style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.green[900])),
                          Spacer(),
                          Text(
                            rate,
                            style: TextStyle(fontSize: 13),
                          ),
                          Icon(
                            icon,
                            size: 18,
                          ),
                        ],
                      ),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
