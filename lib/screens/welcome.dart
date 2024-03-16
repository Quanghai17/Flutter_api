import 'package:flutter/material.dart';
import 'package:flutter_laravel_app_api/screens/home.dart';
import 'package:flutter_laravel_app_api/screens/login.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: height,
            width: width,
            color: Colors.grey.shade200,
            child: Image.asset(
              "image/splash.jpg",
              fit: BoxFit.cover,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              height: height * 0.32,
              width: width,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Lets Start Journey, Enjoy",
                      style: TextStyle(
                          fontSize: width * 0.058,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                    Text(
                      "Beautiful Movement of Life",
                      style: TextStyle(
                          fontSize: width * 0.058,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Login()));
                      },
                      child: Container(
                        height: height * 0.065,
                        width: width * 0.75,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.white),
                        child: Center(
                            child: Text(
                          "Start",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: width * 0.05,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 1),
                        )),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Don\'t have account?",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: width * 0.05,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 1),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                  ]),
            ),
          )
        ],
      ),
    );
  }
}
