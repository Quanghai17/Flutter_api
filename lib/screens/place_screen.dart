import 'package:flutter/material.dart';

class PlaceScreen extends StatefulWidget {
  const PlaceScreen({super.key});

  @override
  State<PlaceScreen> createState() => _PlaceScreenState();
}

class _PlaceScreenState extends State<PlaceScreen> {
  var height, width;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: height,
          width: width,
          color: Colors.white,
          child: Column(children: [
            Container(
              height: height * 0.57,
              width: width,
              decoration: BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(
                      image: AssetImage("image/bg.jpg"), fit: BoxFit.cover),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(35),
                      bottomRight: Radius.circular(35))),
              child: Stack(
                children: [
                  Container(
                    height: height,
                    width: width,
                    decoration: BoxDecoration(
                      color: Colors.black45.withOpacity(0.15),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(35),
                          bottomRight: Radius.circular(35)),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: SizedBox(
                      height: height * 0.1,
                      width: width * 0.9,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Container(
                              height: height * 0.051,
                              width: width * 0.1,
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  color: Colors.white),
                              child: Center(
                                  child: Icon(
                                Icons.arrow_back_ios_new,
                                color: Colors.blue,
                                size: width * 0.05,
                              )),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: SizedBox(
                      height: height * 0.23,
                      width: width * 0.85,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "The Montcalm At",
                              style: TextStyle(
                                  fontSize: width * 0.066,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white),
                            ),
                            Text(
                              "Brewry London City",
                              style: TextStyle(
                                  fontSize: width * 0.046,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            ),
                            SizedBox(
                              height: height * 0.02,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  height: width * 0.03,
                                ),
                                Icon(
                                  Icons.location_on,
                                  color: Colors.blue,
                                  size: width * 0.07,
                                ),
                                Text(
                                  "London city",
                                  style: TextStyle(
                                      fontSize: width * 0.036,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: width * 0.05),
                              child: Image.asset(
                                "image/rating.png",
                                height: height * 0.023,
                                width: width * 0.17,
                                fit: BoxFit.cover,
                              ),
                            )
                          ]),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(25),
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Icon(
                        Icons.bookmark_border,
                        color: Colors.white,
                        size: width * 0.08,
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Expanded(
                child: SizedBox(
              width: width * 0.85,
              child: Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
                style: TextStyle(
                    fontSize: width * 0.038,
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(255, 94, 93, 93)),
                textAlign: TextAlign.justify,
              ),
            )),
            Padding(
              padding: EdgeInsets.only(left: width * 0.05),
              child: Row(
                children: [
                  Image.asset(
                    "image/clock.png",
                    height: height * 0.032,
                  ),
                  SizedBox(
                    width: width * 0.02,
                  ),
                  Text(
                    "8 AM - 9 PM",
                    style: TextStyle(
                        fontSize: width * 0.038,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey),
                  )
                ],
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Padding(
              padding: EdgeInsets.only(left: width * 0.05),
              child: Row(children: [
                Image.asset(
                  "image/calendar.png",
                  height: height * 0.032,
                ),
                SizedBox(
                  width: width * 0.02,
                ),
                Text(
                  "Friday - Tuesday",
                  style: TextStyle(
                      fontSize: width * 0.038,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey),
                )
              ]),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Padding(
              padding: EdgeInsets.only(left: width * 0.05),
              child: Row(children: [
                Image.asset(
                  "image/flight (1).png",
                  height: height * 0.032,
                ),
                SizedBox(
                  width: width * 0.02,
                ),
                Text(
                  "Ticket 2 way",
                  style: TextStyle(
                      fontSize: width * 0.038,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey),
                )
              ]),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            SizedBox(
              height: height * 0.15,
              width: width,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: height * 0.07,
                      width: width * 0.33,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.blue, width: 2)),
                      child: Center(
                        child: Text(
                          "\$9,50.00",
                          style: TextStyle(
                              fontSize: width * 0.05,
                              fontWeight: FontWeight.w700,
                              color: Colors.blue),
                        ),
                      ),
                    ),
                    Container(
                      height: height * 0.07,
                      width: width * 0.43,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.blue),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Book",
                            style: TextStyle(
                                fontSize: width * 0.05,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          )
                        ],
                      ),
                    )
                  ]),
            )
          ]),
        ),
      ),
    );
  }
}
