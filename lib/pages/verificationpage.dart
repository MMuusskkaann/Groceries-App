import 'package:flutter/material.dart';
import 'package:groceriesapp/pages/location.dart';
import 'package:pin_code/pin_code.dart' hide PinCodeFieldShape;
import 'package:pin_code_fields/pin_code_fields.dart'
    show PinCodeTextField, AnimationType, PinTheme, PinCodeFieldShape;

class Verificationpage extends StatefulWidget {
  const Verificationpage({super.key});

  @override
  State<Verificationpage> createState() => _VerificationpageState();
}

class _VerificationpageState extends State<Verificationpage> {
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
            padding: const EdgeInsets.only(top: 140),
            child: Column(
              children: [
                Positioned(
                  top: 40,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 25.0),
                        child: Text(
                          "Enter your 4-digit code",
                          style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.w600,
                            fontFamily: "Gilroy",
                            height: 3,
                          ),
                        ),
                      ),

                      Positioned(
                        // top: 110,
                        child: Container(
                          padding: EdgeInsets.only(top: 0, left: 25.0),
                          child: Text(
                            "Code",
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                              fontFamily: "Gilroy",
                              color: Colors.grey,
                              height: 2,
                            ),
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: SizedBox(
                          width: 400, // 👈 fixed width for whole OTP row
                          child: PinCodeTextField(
                            appContext: context,
                            length: 4,
                            keyboardType: TextInputType.number,
                            animationType: AnimationType.none,
                            pinTheme: PinTheme(
                              shape: PinCodeFieldShape.underline,
                              borderRadius: BorderRadius.zero,
                              fieldHeight: 55,
                              fieldWidth: 40,  // har field ki width
                              activeColor: Colors.grey,
                              inactiveColor: Colors.grey,
                              selectedColor: Colors.grey,
                            ),
                            enableActiveFill: false,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly, // evenly distribute within 220
                            onChanged: (value) {
                              print(value);
                            },
                            onCompleted: (value) {
                              print("Completed: $value");
                            },
                          ),
                        ),
                      )

                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),

      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(16.0),
        child: SizedBox(
          width: double.infinity,
          height: 50,
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => locationPage()),
              );
            },
            child: Text("Next"),
          ),
        ),
      ),
    );
  }
}
