import 'package:flutter/material.dart';

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
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/onboardng.png"),
              fit: BoxFit.cover,
            ),
          ),
        ),

        Positioned(
          top: 540,
          left: 200,
          child: Image.asset("assets/images/Group.png", height: 60, width: 60),
        ),

        Positioned(
          top: 630,
          left: 145,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome',
                style: TextStyle(
                  fontFamily: 'Gilroy',
                  fontWeight: FontWeight.bold,
                  fontSize: 48,
                  color: Colors.white,
                  decoration: TextDecoration.none,
                ),
              ),

              Positioned(
                top: 690,
                right: 90,
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
            ],
          ),
        ),
      ],
    );
  }
}
