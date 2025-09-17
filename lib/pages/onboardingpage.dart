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
          top: 500,//595
          left: 174,//175
          child: Image.asset("assets/images/Group.png", height: 60, width: 60),
        ),

        Positioned(
          top: 570, //629
          left: 99, //120
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
          top: 630, //685
          right: 83, //99
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
          top: 695, //705
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
              bottom:105, //110
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
                    borderRadius: BorderRadius.circular(17),
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