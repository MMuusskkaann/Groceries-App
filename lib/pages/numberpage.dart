import 'package:flutter/material.dart';
import 'package:flutter_intl_phone_field/flutter_intl_phone_field.dart';
import 'package:groceriesapp/pages/verificationpage.dart';

class Numberpage extends StatefulWidget {
  const Numberpage({super.key});

  @override
  State<Numberpage> createState() => _NumberpageState();
}

class _NumberpageState extends State<Numberpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(color: Colors.white70),

          Positioned(
            child: Image.asset(
              "assets/images/Rectangle.png",
              fit: BoxFit.cover,
            ),
          ),

          Positioned(
            top: 50,
            left: 15,
            child: IconButton(
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 100),
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
                          "Enter your mobile number",
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
                            "Mobile Number",
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
                        padding: const EdgeInsets.only(left: 19.0),
                        child: Container(
                          width: 370,
                          child: IntlPhoneField(
                            initialCountryCode: 'IN',
                            showCountryFlag: true,
                            showDropdownIcon: false,
                            disableLengthCheck: true,
                            style: TextStyle(fontSize: 19),
                            onChanged: (phone) {
                              // print(phone.completeNumber);
                            },
                            decoration: InputDecoration(
                              // labelText: 'Phone Number',
                              counterText: '',
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.grey,
                                  width: 2.0,
                                ), // bottom line color
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.grey,
                                  width: 2.5,
                                ), // bottom line color on focus
                              ),
                            ),
                          ),
                        ),
                      ),
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
                MaterialPageRoute(builder: (context) => Verificationpage()),
              );
            },
            child: Text("Next"),
          ),
        ),
      ),
    );
  }
}
