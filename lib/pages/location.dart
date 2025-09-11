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
            padding: const EdgeInsets.only(top: 140, left: 115),
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
            // top: 200,
            bottom: 0,
            left: 0,
            right: 0,
            // height: MediaQuery.of(context).size.height / 1,
            child: Container(
              color: Colors.white,
              padding: EdgeInsets.only(
                left: 25.0,
                right: 10.0,
                top: 1,
                bottom: 0.0,
              ),
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.start,
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
                  Text(
                    "with nectar",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Gilroy',
                      fontSize: 26,
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
