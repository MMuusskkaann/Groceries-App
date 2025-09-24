import 'package:flutter/material.dart';
import 'package:groceriesapp/pages/location.dart';
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
            padding: const EdgeInsets.only(top: 140, left: 25, right: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Enter your 4-digit code",
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w600,
                    fontFamily: "Gilroy",
                    height: 2,
                  ),
                ),
                Text(
                  "Code",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                    fontFamily: "Gilroy",
                    color: Colors.grey,
                    height: 2,
                  ),
                ),
                SizedBox(height: 20),

                // OTP BOX FIELD (WhatsApp Style)
                PinCodeTextField(
                  appContext: context,
                  length: 4,
                  keyboardType: TextInputType.number,
                  animationType: AnimationType.fade,
                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box, // 👈 BOX STYLE
                    borderRadius: BorderRadius.circular(10),
                    fieldHeight: 55,
                    fieldWidth: 50,
                    activeColor: Colors.grey, // active border
                    selectedColor: Colors.grey, // selected border
                    inactiveColor: Colors.grey, // inactive border
                    activeFillColor: Colors.white,
                    selectedFillColor: Colors.white,
                    inactiveFillColor: Colors.white,
                  ),
                  enableActiveFill: false,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  onChanged: (value) {
                    print(value);
                  },
                  onCompleted: (value) {
                    print("Completed: $value");

                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: Text("OTP Entered"),
                        content: Text("You entered: $value"),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text("OK"),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),

      // NEXT BUTTON
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(16.0),
        child: SizedBox(
          width: double.infinity,
          height: 50,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              // backgroundColor: Colors.grey, // WhatsApp style button
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => locationPage()),
              );
            },
            child: Text(
              "Next",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
