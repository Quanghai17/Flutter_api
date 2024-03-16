import 'package:flutter/material.dart';
import 'package:flutter_laravel_app_api/providers/AuthProvider.dart';
import 'package:flutter_laravel_app_api/providers/PlaceProvider.dart';
import 'package:flutter_laravel_app_api/screens/categories.dart';
import 'package:flutter_laravel_app_api/screens/place_screen.dart';
import 'package:flutter_laravel_app_api/screens/transactions.dart';

import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedIndex = 0;
  var height, width;
  List iconImages = [
    "image/flight.png",
    "image/condo.png",
    "image/plate.png",
    "image/front-of-bus.png",
    "image/flight.png",
    "image/condo.png",
    "image/plate.png",
    "image/front-of-bus.png",
  ];

  List imgs = [
    "aeroplane.jpg",
    "girltravel.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Container(
            height: height,
            width: width,
            color: Colors.white,
            child: Column(children: [
              SizedBox(
                height: height * 0.035,
              ),
              SizedBox(
                height: height * 0.09,
                width: width * 0.85,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Explore",
                          style: TextStyle(
                              fontSize: width * 0.059,
                              fontWeight: FontWeight.w700,
                              color: Colors.black),
                        ),
                        Text(
                          "Explore Your World Beuty",
                          style: TextStyle(
                              fontSize: width * 0.037,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey),
                        )
                      ],
                    ),
                    SizedBox(
                      height: height * 0.035,
                    ),
                    Container(
                      height: height * 0.045,
                      width: width * 0.11,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          image: DecorationImage(
                              image: AssetImage("image/girl.jpg"),
                              fit: BoxFit.cover)),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.035,
              ),
              Container(
                height: height * 0.073,
                width: width * 0.85,
                decoration: BoxDecoration(
                    color: Colors.blue.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(13)),
                child: Center(
                    child: Padding(
                  padding: EdgeInsets.only(left: width * 0.03),
                  child: TextFormField(
                    style: TextStyle(color: Colors.white),
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Search here...",
                        hintStyle: TextStyle(
                            color: Colors.grey, fontSize: width * 0.04),
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.black54,
                          size: width * 0.08,
                        )),
                  ),
                )),
              ),
              SizedBox(
                height: height * 0.035,
              ),
              SizedBox(
                  height: height * 0.08,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: iconImages.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Card(
                            elevation: 4,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Container(
                              height: height * 0.068,
                              width: width * 0.14,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.blue),
                              child: Center(
                                  child: Image(
                                image: AssetImage(iconImages[index]),
                                height: height * 0.04,
                                color: Colors.white,
                              )),
                            ),
                          ),
                        );
                      })),
              SizedBox(
                height: height * 0.035,
              ),
              SizedBox(
                width: width * 0.85,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "All",
                        style: TextStyle(
                            fontSize: width * 0.04,
                            fontWeight: FontWeight.w500,
                            color: Colors.black54),
                      ),
                      Text(
                        "New",
                        style: TextStyle(
                            fontSize: width * 0.04,
                            fontWeight: FontWeight.w500,
                            color: Colors.black54),
                      ),
                      Text(
                        "Tour",
                        style: TextStyle(
                            fontSize: width * 0.04,
                            fontWeight: FontWeight.w500,
                            color: Colors.blue),
                      ),
                      Text(
                        "Asia",
                        style: TextStyle(
                            fontSize: width * 0.04,
                            fontWeight: FontWeight.w500,
                            color: Colors.black54),
                      ),
                      Text(
                        "Adventure",
                        style: TextStyle(
                            fontSize: width * 0.04,
                            fontWeight: FontWeight.w500,
                            color: Colors.black54),
                      )
                    ]),
              ),
              SizedBox(
                height: height * 0.035,
              ),
              SizedBox(
                height: height * 0.44,
                width: width,
                child: Consumer<PlaceProvider>(
                  builder: (context, placeProvider, child) {
                    final places = placeProvider
                        .places; // Lấy danh sách địa điểm từ PlaceProvider
                    return ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: places
                          .length, // Sử dụng độ dài của danh sách địa điểm
                      itemBuilder: (context, index) {
                        final place = places[index];
                        return Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal:
                                MediaQuery.of(context).size.width * 0.05,
                            vertical: MediaQuery.of(context).size.height * 0.01,
                          ),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => PlaceScreen(),
                                ),
                              );
                            },
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.6,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: const Color.fromARGB(255, 252, 252, 252),
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                      'http://127.0.0.1:8000/storage/' +
                                          place.image),
                                ),
                              ),
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.14,
                                      width: MediaQuery.of(context).size.width *
                                          0.47,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            place.title,
                                            style: TextStyle(
                                              fontSize: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.043,
                                              color: Color.fromARGB(
                                                  255, 255, 255, 255),
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          Text(
                                            place.desc,
                                            style: TextStyle(
                                              fontSize: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.033,
                                              color: Color.fromARGB(
                                                  255, 255, 255, 255),
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          Image.asset(
                                            "image/rating.png",
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.023,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.17,
                                            fit: BoxFit.cover,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.05,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
              SizedBox(
                height: height * 0.035,
              ),
            ]),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
          iconSize: 20,
          selectedFontSize: 13,
          showUnselectedLabels: true,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.tour_sharp), label: 'Tours'),
            BottomNavigationBarItem(icon: Icon(Icons.logout), label: 'Log out')
          ],
          currentIndex: selectedIndex,
          onTap: onItemTapped,
        ),
      ),
    );
  }

  Future<void> onItemTapped(int index) async {
    if (index == 2) {
      final AuthProvider provider =
          Provider.of<AuthProvider>(context, listen: false);

      await provider.logOut();
    } else {
      setState(() {
        selectedIndex = index;
      });
    }
  }
}
