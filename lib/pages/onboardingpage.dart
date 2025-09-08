import 'package:flutter/material.dart';
import 'package:groceriesapp/pages/signinpage.dart';

class Onboardingpage extends StatefulWidget {
  const Onboardingpage({super.key});

  @override
  State<Onboardingpage> createState() => _OnboardingpageState();
}

class _OnboardingpageState extends State<Onboardingpage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Image.asset("assets/images/onboardng.png", fit: BoxFit.cover),
        ),

        Positioned(
          top: 490,//490
          left: 175,//275
          child: Image.asset("assets/images/Group.png", height: 60, width: 60),
        ),

        Positioned(
          top: 570, //570
          left: 102, //102
          child: Text(
            'Welcome',
            // textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'Gilroy',
              fontWeight: FontWeight.bold,
              fontSize: 48,
              color: Colors.white,
              decoration: TextDecoration.none,
            ),
          ),
        ),

        Positioned(
          top: 635, //635
          right: 80, //80
          child: Text(
            "to our store",
            style: TextStyle(
              fontFamily: 'Gilroy',
              fontWeight: FontWeight.bold,
              fontSize: 48,
              color: Colors.white,
              decoration: TextDecoration.none,
            ),
          ),
        ),

        Positioned(
          top: 705, //705
          left: 60, //60
          // height: 15,
          child: Text(
            "Get your groceries in as fast as one hour",
            style: TextStyle(
              fontFamily: 'Gilroy-Medium',
              fontWeight: FontWeight.bold,
              fontSize: 16,
              height: 1.3,
              color: Colors.white.withOpacity(0.6),
              decoration: TextDecoration.none,
            ),
          ),
        ),

        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: EdgeInsets.only(
              bottom: 85, //105
            ), //this help to move button upward direction
            child: SizedBox(
              height: 65,
              width: 370,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Signinpage()),
                  );
                },

                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF53B175),
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Center(
                  child: Text(
                    "Get Started",
                    style: TextStyle(
                      fontFamily: "Gilroy",
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                      height: 3,

                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}