import 'package:flutter/material.dart';
import 'dart:async';
import 'package:gym1/loginn.dart'; // To use the Timer

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => LoginPage(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Color(0xff818AF9),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(0),
          child: Column(
            children: [
              SizedBox(height: screenHeight * 0.2),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/Group 3858.png",
                    width: screenWidth * 0.4,
                  ),
                  
                  Image.asset(
                    "assets/healthypet.png",
                    width: screenWidth * 0.4,
                  ),
                ],
              ),
              SizedBox(height: screenHeight * 0.05),
              Center(
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Helping you\n",
                        style: TextStyle(color: Colors.white, fontSize: 30),
                      ),
                      TextSpan(
                        text: "to keep ",
                        style: TextStyle(color: Colors.white, fontSize: 30),
                      ),
                      TextSpan(
                        text: "your bestie\n",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 30),
                      ),
                      TextSpan(
                        text: "stay healthy!",
                        style: TextStyle(color: Colors.white, fontSize: 30),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.1),
              Image.asset(
                "assets/Group 3860 (1).png",
                height: screenHeight * 0.5,
                fit: BoxFit.cover,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
