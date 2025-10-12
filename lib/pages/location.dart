import 'package:country_state_city_picker/country_state_city_picker.dart'
    show SelectState;
import 'package:flutter/material.dart';
import 'package:groceriesapp/pages/loginpage.dart';

class locationPage extends StatefulWidget {
  const locationPage({super.key});

  @override
  State<locationPage> createState() => _locationPageState();
}

class _locationPageState extends State<locationPage> {
  String? countryValue;
  String? stateValue;
  String? cityValue;

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
            padding: const EdgeInsets.only(top: 140, left: 105),
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
            left: 60,
            child: Container(
              color: Colors.white,
              padding: EdgeInsets.only(left: 3.0, right: 10.0, bottom: 0.0),
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

          Positioned(
            child: Padding(
              padding: const EdgeInsets.only(left : 30.0, top: 540),
              child: Text(
                "Your Zone",
                style: TextStyle(
                  fontFamily: "Gilroy",
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                  color: Colors.grey,
                  height: 3,
                ),
              ),
            ),
          ),

          Positioned(
            top: 585,
            left: 30, // left side  se margin
            right: 40,
            child: Column(
              children: [
                SelectState(
                  onCountryChanged: (value) {
                    setState(() {
                      countryValue = value;
                    });
                  },
                  onStateChanged: (value) {
                    setState(() {
                      stateValue = value;
                    });
                  },
                  onCityChanged: (value) {
                    setState(() {
                      cityValue = value;
                    });
                  },
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(
                bottom: 110, //110
              ), //this help to move button upward direction
              child: SizedBox(
                height: 65,
                width: 390,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Loginpage()),
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
      ),
    );
  }
}
