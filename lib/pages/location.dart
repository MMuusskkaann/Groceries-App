import 'package:flutter/material.dart';

class locationPage extends StatefulWidget {
  const locationPage({super.key});

  @override
  State<locationPage> createState() => _locationPageState();
}

class _locationPageState extends State<locationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(color: Colors.white70),

          Positioned(
            width: 450,
            child: Image.asset(
              "assets/images/Rectangle.png",
              fit: BoxFit.cover,
            ),
          ),

          Positioned(
            top: 60,
            left: 17,
            child: IconButton(
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 140, left: 110),
            child: SizedBox(
              child: Positioned(
                top: 150,
                child: Image.asset(
                  "assets/images/location.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),

          Positioned(
            top: 340,
            left: 69,
            child: Container(
              color: Colors.white,
              padding: EdgeInsets.only(
                left: 2.0,
                right: 10.0,
                bottom: 0.0,
              ),
              child: Column(

                children: [
                  Text(
                    "Select Your Location",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Gilroy',
                      fontSize: 26,
                    ),
                  ),
                  SizedBox(height: 5),
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Text(
                      "Switch on your location to stay in tune with",
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Gilroy',
                        fontSize: 15,
                      ),
                    ),
                  ),

                  SizedBox(height: 5),
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Text(
                      "what's happening in your area",
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Gilroy',
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
