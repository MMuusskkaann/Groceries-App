import 'package:flutter/material.dart';

class Signinpage extends StatefulWidget {
  const Signinpage({super.key});

  @override
  State<Signinpage> createState() => _SigninpageState();
}

class _SigninpageState extends State<Signinpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: MediaQuery.of(context).size.height / 2,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                  image: AssetImage("assets/images/maskgroup.png"),
                ),
              ),
            ),
          ),

          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            height: MediaQuery.of(context).size.height / 2,
            child: Container(
              color: Colors.white,
              padding: EdgeInsets.only(
                left: 25.0,
                right: 10.0,
                top: 0.0,
                bottom: 0.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Get your groceries",
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

                  SizedBox(height: 15),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 16,
                        ),
                        decoration: BoxDecoration(color: Colors.white),
                        child: Text("+91"),
                      ),

                      SizedBox(width: 0),
                      Expanded(
                        child: TextField(
                          keyboardType: TextInputType.phone,
                          textInputAction: TextInputAction.done,
                          decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey,
                                width: 1.5,
                              ),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey,
                                width: 1.5,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 40),

                  Center(
                    child: Column(
                      children: [
                        Text(
                          "Or connect with social media",
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Gilroy',
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 40),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: EdgeInsets.only(
                        bottom: 20,
                        // left: 10,
                        right: 10
                      ), //this help to move button upward direction
                      child: SizedBox(
                        height: 65,
                        width: 375,
                        child: ElevatedButton.icon(
                          onPressed: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(builder: (context) => Signinpage()),
                            // );
                          },

                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF4285F4),
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          // icon: Icon(Icons.g),
                          label: Center(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                bottom: 1.0,
                              ),
                              child: Text(
                                "Get Started",
                                style: TextStyle(
                                  fontFamily: "Gilroy",
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20,
                                  height: 4,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),

                  // SizedBox(height: 2),
                  Align(
                    alignment: Alignment.bottomCenter,
                      child:Padding(
                        padding: EdgeInsets.only(
                          // bottom: 20,
                          left: 0,
                          right: 10,
                        ),

                      child: SizedBox(
                        height: 65,
                        width: 375,
                        child: ElevatedButton(
                          onPressed: () {
                            // Navigator.push(
                              // context,
                              // MaterialPageRoute(builder: (context) => Signinpage()),
                            // );
                          },

                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF1877F2),
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
                                height: 4,
                              ),
                            ),
                          ),
                        ),
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
